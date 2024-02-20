import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_post_entity.dart';
import 'package:pets_next_door_flutter/presentation/main/main_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/chat/chat_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/community/community_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/my_info/profile_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/register_pet_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/sign_in_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/sign_up_page.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/detail/sos_post_detail_view.dart';
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
  community,
  chat,
  myInfo,
  profile,
  registerPet,
  sosPostDetail;

  const AppRoute();

  String get path => '/${this.name}';
  String get chileRoutePath => '${this.name}';
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
        path: AppRoute.registerPet.path,
        name: AppRoute.registerPet.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const RegisterPetPage(),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainPage(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                  path: AppRoute.home.path,
                  name: AppRoute.home.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        child: const HomeView(),
                      ),
                  routes: [
                    GoRoute(
                        path: AppRoute.sosPostDetail.chileRoutePath,
                        name: AppRoute.sosPostDetail.name,
                        pageBuilder: (context, state) {
                          final postEntity = state.extra as SosPostEntity?;
                          final postId = (postEntity != null)
                              ? postEntity.postId
                              : int.parse(
                                  state.pathParameters['postId'] ?? '-1');

                          if (postId <= 0) {
                            print('올바른 sos postId가 아닙니다.');
                          }

                          return MaterialPage(
                            child: SosPostDetailView(
                              postId: postId,
                              sosPostEntity: postEntity,
                            ),
                          );
                        })
                  ]),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _gatherNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.community.path,
                name: AppRoute.community.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: CommunityView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _chatNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.chat.path,
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
    ],
  );
}
