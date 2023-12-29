import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:pets_next_door_flutter/presentation/pages/splash/splash_event.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ConsumerState<SplashView> with SplashEvent {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200)).then(
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
        child: Center(
            child: SvgPicture.asset(
          PNDSvgs.mainIcon,
          width: 100,
        )),
      ),
    );
  }
}
