import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/presentation/pages/splash/splash_event.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ConsumerState<SplashPage> with SplashEvent {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500)).then(
      (_) async {
        await routeByUserAuthAndData(ref);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.of.white,
      ),
    );
  }
}
