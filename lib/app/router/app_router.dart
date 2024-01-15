import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/scaffold_with_nested_navigation.dart';
import 'package:pets_next_door_flutter/presentation/pages/chat/chat_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/gather/gather_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/my_info/profile_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/register_pet_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/steps/breed_search_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/sign_in_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/sign_up_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/splash/splash_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

// private navigators
final rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _gatherNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'gather');
final _chatNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'chat');
final _myInfoNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my');

enum AppRoute {
  splash,
  signIn,
  signUp,
  phoneAuth,
  home,
  gather,
  chat,
  myInfo,
  profile,
  breedSearch,
  registerPet;

  const AppRoute();

  String get path => '/${this.name}';
}

@riverpod
// ignore: unsupported_provider_value
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoute.splash.path,
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      return null;
    },
    routes: [
      GoRoute(
        path: AppRoute.splash.path,
        name: AppRoute.splash.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: SplashView(),
        ),
      ),
      GoRoute(
        path: AppRoute.signIn.path,
        name: AppRoute.signIn.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: SignInPage(),
        ),
      ),

      GoRoute(
        path: AppRoute.signUp.path,
        name: AppRoute.signUp.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: SignUpPage(),
        ),
      ),

      GoRoute(
        path: AppRoute.breedSearch.path,
        name: AppRoute.breedSearch.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const BreedSearchView(),
        ),
      ),

      GoRoute(
        path: AppRoute.registerPet.path,
        name: AppRoute.registerPet.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const RegisterPetPage(),
        ),
      ),

      // GoRoute(
      //   path: '/${AppRoute.registerPetDetail.name}',
      //   name: AppRoute.registerPetDetail.name,
      //   pageBuilder: (context, state) => MaterialPage(
      //     key: state.pageKey,
      //     child: const RegisterPetInitialView(),
      //   ),
      // ),

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
                path: AppRoute.home.path,
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
            navigatorKey: _myInfoNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.myInfo.path,
                name: AppRoute.myInfo.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: MyInfoView(),
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
