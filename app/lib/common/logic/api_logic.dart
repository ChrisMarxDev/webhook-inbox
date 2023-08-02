import 'package:flutter_riverpod/flutter_riverpod.dart';

final baseUrlProvider = Provider<String>((ref) {
  return const String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'localhost:8080',
  );
});

final httpsUrlProvider = Provider<String>((ref) {
  return 'https://${ref.read(baseUrlProvider)}';
});

final wsUrlProvider = Provider<String>((ref) {
  return 'ws://${ref.read(baseUrlProvider)}';
});
