import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/constants/sizes.dart';
import 'package:pets_next_door_flutter/src/constants/strings.dart';
import 'package:pets_next_door_flutter/src/constants/svgs.dart';
import 'package:pets_next_door_flutter/src/features/auth/domain/sns_oauth_info.dart';
import 'package:pets_next_door_flutter/src/features/auth/presentation/login/login_view_controller.dart';
import 'package:pets_next_door_flutter/src/features/auth/presentation/login/widgets/sns_button_widget.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_profile_view_state.dart';
import 'package:pets_next_door_flutter/src/routing/app_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final loginViewController =
              ref.watch(loginViewControllerProvider.notifier);

          final providerList = (Platform.isIOS)
              ? SnsProviderType.values.toList()
              : SnsProviderType.getAndroidProviderList();

          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(PNDSvgs.mainIcon),
                      gapH20,
                      SvgPicture.asset(PNDSvgs.mainTitleIcon),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * (155 / 844),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: providerList.map((provider) {
                          final index =
                              SnsProviderType.values.indexOf(provider);
                          final isLastIndex =
                              SnsProviderType.values.length - 1 == index;

                          return Padding(
                            padding: EdgeInsets.only(
                              right: isLastIndex ? 0 : PNDSizes.p24,
                            ),
                            child: SnsButtonWidget(
                              snsType: provider,
                              onTap: (provider) {
                                loginViewController.signIn(
                                  selectedProvider: provider,
                                  onRegisterUser: (registerInfo) =>
                                      _routeToRegister(context, registerInfo),
                                  onExistingUser: () => _routeToHome(context),
                                );
                              },
                            ),
                          );
                        }).toList(),
                      ),
                      gapH32,
                      const Text(
                        PNDStrings.problemWhenLogin,
                        style: TextStyle(
                            color: Color(0xff9E9E9E), shadows: [BoxShadow()]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _routeToRegister(
    BuildContext context,
    SnsOAuthInfo snsOAuthInfo,
  ) {
    // ref.read(registrationInfoStateProvider(snsOAuthInfo).notifier);

    context.pushNamed(
      AppRoute.profile.name,
      extra: UserProfileViewState.edit(userId: 1),
    );
  }

  void _routeToHome(BuildContext context) {
    context.goNamed(AppRoute.home.name);
  }
}
