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
    // TODO: 스플래시 화면이 짧게 지나가는 현상을 방지하기 위해 추가, 디자인 변경되면 바뀔 수 있음
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
        child: Center(
            child: SvgPicture.asset(
          PNDSvgs.mainIcon,
          width: 100,
        )),
      ),
    );
  }
}
