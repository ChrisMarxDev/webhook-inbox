import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/common/widgets/lifecycle_wrapper.dart';
import 'package:my_app/features/home/home_screen.dart';
import 'package:my_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MouseRegionWrapper(
        child: LifecycleWrapper(
          onLifecycleChange: (state) {
            logger.i('onLifecycleChange: $state');
          },
          child: MaterialApp(
            theme: theme(false),
            darkTheme: theme(true),
            themeMode: ThemeMode.light,
            builder: Authenticator.builder(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const HomeContainerScreen(),
          ),
        ),
      ),
    );
  }
}
