import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/strings.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/widgets/start_with_apple_button.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/widgets/start_with_google_button.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/widgets/start_with_kakao_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
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
                const Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StartWithGoogleButton(),
                          gapW24,
                          StartWithKakaoButton(),
                          gapW24,
                          StartWithAppleButton()
                        ],
                      ),
                      gapH32,
                      Text(
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
}
