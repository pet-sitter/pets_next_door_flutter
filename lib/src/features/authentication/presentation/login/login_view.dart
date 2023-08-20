import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/constants/strings.dart';
import 'package:pets_next_door_flutter/src/constants/svgs.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/login/login_view_controller.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/login/widgets/sns_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final loginViewController =
              ref.read(loginViewControllerProvider.notifier);
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(Svgs.mainIcon),
                      gapH20,
                      SvgPicture.asset(Svgs.mainTitleIcon),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SnsButtonWidget(
                            onTap: loginViewController.signIn,
                            snsType: SnsProviderType.google,
                          ),
                          gapW24,
                          SnsButtonWidget(
                            onTap: loginViewController.signIn,
                            snsType: SnsProviderType.kakao,
                          ),
                          gapW24,
                          SnsButtonWidget(
                            onTap: loginViewController.signIn,
                            snsType: SnsProviderType.apple,
                          ),
                        ],
                      ),
                      gapH32,
                      const Text(Strings.problemWhenLogin)
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
}
