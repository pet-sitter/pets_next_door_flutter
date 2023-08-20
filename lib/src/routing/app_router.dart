import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/login/login_view.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/signup/phone_auth_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoute {
  login,
  phoneAuth,
}

@riverpod
// ignore: unsupported_provider_value
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/login',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      return null;
    },

    routes: [
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: LoginView(),
        ),
      ),
      GoRoute(
        path: '/phone_auth',
        name: AppRoute.phoneAuth.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: PhoneAuthView(),
        ),
      ),
    ],
    //errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
