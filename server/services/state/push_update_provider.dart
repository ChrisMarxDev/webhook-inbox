import 'package:riverpod/riverpod.dart';

final pushUpdateProvider =
    StateProvider.family<DateTime?, String>((ref, userId) {
  print('pushUpdateProvider: $userId');
  return null;
});
