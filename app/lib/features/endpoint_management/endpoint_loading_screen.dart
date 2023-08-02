import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/features/endpoint_management/endpoint_management_logic.dart';

class AsyncEndpointLoader extends ConsumerWidget {
  const AsyncEndpointLoader({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext context, List<UserEndpoint>) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoints = ref.watch(userEndpointsProvider);
    return AsyncValuePage(
      asyncValue: endpoints,
      loadingBuilder: (context) => const LoadingView(),
      builder: builder,
    );
  }
}
