import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:models/models.dart';
import 'package:my_app/common/common.dart';

final userEndpointsProvider = FutureProvider<List<UserEndpoint>>((ref) async {
  final result =
      await http.get(Uri.parse('${ref.read(httpsUrlProvider)}/user/test1'));

  final map = jsonDecode(result.body) as List<dynamic>;

  final mapped =  map
      .map((e) => UserEndpoint.fromJson(e as Map<String, dynamic>))
      .toList();

  return mapped;
});

final currentEdpointProvider = StateProvider<UserEndpoint?>((ref) => null);



