import 'dart:convert';

import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:models/models.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/common/logic/transformers/transformers.dart';

final entriesFutureStateProvider = StateNotifierProvider.family<
    EntriesStateNotifier,
    AsyncValue<List<NotificationEntry>>,
    String>((ref, endpointId) {
  final notifier = EntriesStateNotifier(ref, endpointId);
  ref.listen(entryUpdateStreamProvider(endpointId), (previous, next) {
    print('Entry update stream triggered ${next.value.toString()}');
    notifier.updateData();
  });

  return notifier;
});

final entryUpdateStreamProvider = StreamProvider.family((ref, userId) {
  final uri = Uri.parse('${ref.read(wsUrlProvider)}/ws?user=$userId');
  final channel = WebSocketChannel.connect(uri);

  return channel.stream;
});

final filterUrgencyProvider = StateProvider<int>((ref) => 0);

final filteredEntriesFutureStateProvider = Provider.autoDispose
    .family<AsyncValue<List<NotificationEntry>>, String>((ref, endpointId) {
  final entries = ref.watch(entriesFutureStateProvider(endpointId));
  final filter = ref.watch(filterUrgencyProvider);

  if (!entries.hasValue) {
    return entries;
  } else if (entries is AsyncData && filter <= 0) {
    return entries;
  } else {
    final filtered = entries.value!
        .where((element) => element.internalUrgency >= filter)
        .toList();
    return AsyncData(filtered);
  }
});

class EntriesStateNotifier
    extends StateNotifier<AsyncValue<List<NotificationEntry>>> {
  EntriesStateNotifier(this.ref, this.endpointId)
      : super(const AsyncLoading()) {
    init();
  }

  final Ref ref;
  final String endpointId;

  Future<void> init() async {
    state = await AsyncValue.guard(() async {
      return _loadData();
    });
  }

  Future<void> updateData() async {
    final result = await _loadData();
    state = AsyncData(result);
  }

  Future<List<NotificationEntry>> _loadData() async {
    final url = '${ref.read(httpsUrlProvider)}/notification/$endpointId';
    final response = await http.get(Uri.parse(url));

    if (response.body.isEmpty) {
      return [];
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final result = UserRequestDataResponse.fromJson(json);
    final mappedResults = result.entries.map(notificationDataPipeline).toList();

    return Future.wait(mappedResults);
  }
}
