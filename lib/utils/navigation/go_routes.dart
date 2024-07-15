import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/features/authentication/screens/login/login.dart';
import 'package:mystore/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mystore/features/authentication/screens/signup/signup.dart';
import 'package:mystore/features/authentication/screens/signup/verify_email.dart';

enum MyRoutes {
  onboarding,
  login,
  signup,
  verifyEmail,
}

class AppRoute {
  static GoRouter get routes => _routes;

  static BuildContext? get globalContext => _rootNavigatorKey.currentContext;

  static GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;
  static GlobalKey<NavigatorState> get shellNavigatorKey => _shellNavigatorKey;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static const String _onboarding = '/onboarding';
  static const String _login = '/login';
  static const String _signup = 'signup';
  static const String _verifyEmail = 'verify_email';

  static final _routes = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: _onboarding,
    routes: [
      GoRoute(
        path: _onboarding,
        name: MyRoutes.onboarding.name,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: _login,
        name: MyRoutes.login.name,
        builder: (context, state) => const LoginScreen(),
        routes: [
          GoRoute(
            path: _signup,
            name: MyRoutes.signup.name,
            builder: (context, state) => const SignupScreen(),
            routes: [
              GoRoute(
                path: _verifyEmail,
                name: MyRoutes.verifyEmail.name,
                builder: (context, state) => const VerifyEmailScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
