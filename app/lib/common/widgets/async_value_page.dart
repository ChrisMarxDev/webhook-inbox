import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/common/widgets/loading_indicator.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: LoadingIndicator(),
    );
  }
}

class AsyncValuePage<T> extends ConsumerWidget {
  const AsyncValuePage({
    required this.asyncValue,
    required this.builder,
    this.loadingBuilder,
    super.key,
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(BuildContext context, T data) builder;
  final Widget Function(BuildContext context)? loadingBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return asyncValue.when(
      data: (data) => builder(context, data),
      error: (error, stackTrace) {
        return ErrorView(
          message: error.toString(),
        );
      },
      loading: () => loadingBuilder == null
          ? const LoadingView()
          : loadingBuilder!(context),
    );
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.message,
    super.key,
    this.onRetry,
  });

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }
}
