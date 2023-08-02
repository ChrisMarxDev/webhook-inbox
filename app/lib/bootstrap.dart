import 'dart:async';
import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/amplifyconfiguration.dart';
import 'package:my_app/util/string_util.dart';

import 'package:sentry_flutter/sentry_flutter.dart';

import 'common/common.dart';

Future<void> bootstrap(Widget Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here
  await runZonedGuarded(() async {
    // Add cross-flavor initialization here
    WidgetsFlutterBinding.ensureInitialized();
    await _configureAmplify();

    await SentryFlutter.init(
      (options) {
        options
          ..dsn = const String.fromEnvironment(
            'SENTRY_DSN',
            defaultValue: 'SENTRY_DSN',
          )
          // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
          // We recommend adjusting this value in production.
          ..tracesSampleRate = 1.0
          ..debug = kDebugMode;
      },
      appRunner: () => runApp(
        ProviderScope(
          observers: [
            CustomRiverpodObserver(),
          ],
          child: builder(),
        ),
      ),
    );
  }, (error, stackTrace) {
    log(error.toString(), stackTrace: stackTrace);
  });
}

Future<void> _configureAmplify() async {
  try {
    // Create the API plugin.
    //
    // If `ModelProvider.instance` is not available, try running
    // `amplify codegen models` from the root of your project.
    // Create the Auth plugin.
    final auth = AmplifyAuthCognito();
    // final storage = AmplifyStorageS3();
    await Amplify.addPlugins([
      // storage,
      auth,
    ]);
    // Add the plugins and configure Amplify for your app.
    await Amplify.configure(amplifyconfig);
    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}

class CustomRiverpodObserver extends ProviderObserver {
  final blockedNames = [
    'mouseRegionRelativeYProvider',
    'entryUpdateStreamProvider',
    'userEndpointsProvider',
  ];

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (blockedNames.contains(provider.name)) {
      return;
    }
    logger.i(
      'didUpdateProvider: $provider ${provider.name}, previousValue: $previousValue, newValue: $newValue'
          .limit(300),
    );
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    print('didAddProvider: $provider, value: $value');
  }
}
