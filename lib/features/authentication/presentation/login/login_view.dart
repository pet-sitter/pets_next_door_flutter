import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/constants/app_sizes.dart';
import 'package:pets_next_door_flutter/constants/svgs.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(Svgs.google),
                gapW24,
                SvgPicture.asset(Svgs.kakao),
                gapW24,
                SvgPicture.asset(Svgs.apple),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
