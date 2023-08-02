import 'package:dart_frog/dart_frog.dart';
import 'package:riverpod/riverpod.dart';

final providerContainer = ProviderContainer();
final container = provider<ProviderContainer>((_) {
  print('container provider');
  print('container provider: ${providerContainer.hashCode}');
  return providerContainer;
});


