import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/features/chat/chat_view.dart';
import 'package:pets_next_door_flutter/src/features/gather/gather_view.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/login/login_view.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/signup/phone_auth_view.dart';
import 'package:pets_next_door_flutter/src/features/pet/presentation/breed_search_view.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/user_profile_view.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/user_view.dart';
import 'package:pets_next_door_flutter/src/features/home/presentation/home_view.dart';
import 'package:pets_next_door_flutter/src/routing/scaffold_with_nested_navigation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _gatherNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'gather');
final _chatNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'chat');
final _userNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'user');

enum AppRoute {
  login,
  phoneAuth,
  home,
  gather,
  chat,
  user,
  profile,
  breedSearch,
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
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: LoginView(),
        ),
      ),
      GoRoute(
        path: '/phoneAuth',
        name: AppRoute.phoneAuth.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: PhoneAuthView(),
        ),
      ),

      GoRoute(
        path: '/profile',
        name: AppRoute.profile.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: UserProfileView(),
        ),
      ),

      GoRoute(
        path: '/breedSearch',
        name: AppRoute.breedSearch.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const BreedSearchView(),
        ),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              // Products
              GoRoute(
                path: '/home',
                name: AppRoute.home.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HomeView(),
                ),
                // routes: [
                //   GoRoute(
                //     path: 'login',
                //     name: AppRoute.login.name,
                //     pageBuilder: (context, state) => NoTransitionPage(
                //       key: state.pageKey,
                //       child: LoginView(),
                //     ),
                //   )
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _gatherNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/gather',
                name: AppRoute.gather.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: GatherView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _chatNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/chat',
                name: AppRoute.chat.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: ChatView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _userNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/user',
                name: AppRoute.user.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: UserView(),
                ),
              ),
            ],
          ),
        ],
      ),
      // GoRoute(
      //   path: '/login',
      //   name: AppRoute.login.name,
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: LoginView(),
      //   ),
      // ),
      // GoRoute(
      //   path: '/phone_auth',
      //   name: AppRoute.phoneAuth.name,
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: PhoneAuthView(),
      //   ),
      // ),
      // GoRoute(
      //   path: '/home',
      //   name: AppRoute.home.name,
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: HomeView(),
      //   ),
      // ),
    ],
  );
}
