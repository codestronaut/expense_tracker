import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'ui/auth/onboarding_screen.dart';

class AppRouter {
  AppRouter();

  // TODO: Add managers or state managers

  late final router = GoRouter(
    // ***
    // TODO: Remove this line when build release app
    debugLogDiagnostics: true,
    // ***
    initialLocation: Routes.onboardingPath,
    routes: [
      GoRoute(
        name: Routes.onboarding,
        path: Routes.onboardingPath,
        builder: (context, state) => const OnboardingScreen(),
      ),
    ],
    redirect: (context, state) {
      // TODO: Add redirect based on login state
      return null;
    },
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    },
  );
}

class Routes {
  static const String onboarding = 'onboarding';
  static const String onboardingPath = '/onboarding';
}
