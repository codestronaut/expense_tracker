import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'app_router.dart';
import 'app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final router = _appRouter.router;
    return MaterialApp.router(
      title: 'Expense Tracker',
      theme: AppTheme.light(),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
