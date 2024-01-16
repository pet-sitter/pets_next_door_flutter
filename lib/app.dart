import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/services/size_service.dart';
import 'package:pets_next_door_flutter/core/theme/app_theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      title: '이웃집멍냥',
      themeMode: ThemeMode.light,
      theme: AppTheme.light,
      builder: EasyLoading.init(builder: (context, child) {
        AppColor.init(context);
        AppSizeService.to.init(context);

        return FToastBuilder()(
          context,
          child,
        );
      }),
    );
  }
}
