import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_data_provider.dart';

abstract interface class _SplashEvent {
  Future<void> routeByUserAuthAndData(WidgetRef ref);
}

mixin class SplashEvent implements _SplashEvent {
  @override
  Future<void> routeByUserAuthAndData(WidgetRef ref) async {
    final isLoggedIn = ref.read(isUserAuthorizedProvider);

    if (!isLoggedIn) {
      ref.context.goNamed(AppRoute.signIn.name);
      return;
    }

    await ref.read(userDataProvider.future).then(
      (userData) {
        if (userData != null) {
          ref.context.goNamed(AppRoute.home.name);
        } else {
          ref.context.goNamed(AppRoute.signIn.name);
        }
      },
    ).onError((error, stackTrace) {
      ref.context.goNamed(AppRoute.signIn.name);
    });
  }
}
