import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/theme/extension/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.of.white,
      ),
    );
  }
}
