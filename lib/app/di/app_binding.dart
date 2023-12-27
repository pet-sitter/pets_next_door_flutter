import 'package:pets_next_door_flutter/app/di/modules/user_di.dart';

final class AppBinder {
  AppBinder._();

  /// 'Splash' 단계에서 우선적으로 Binding 해야되는 모듈들은
  /// 아래 메소드에서 처리합
  static Future<void> _initTopPriority() async {}

  static void init() {
    _initTopPriority();

    for (final di in [
      UserDependencyInjection(),
    ]) {
      di.init();
    }
  }
}
