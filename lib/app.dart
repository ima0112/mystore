import 'package:flutter/material.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.routes,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
    );
  }
}
