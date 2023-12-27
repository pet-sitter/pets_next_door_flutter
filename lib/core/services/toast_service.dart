import 'package:fluttertoast/fluttertoast.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';

class ToastService {
  ToastService._();

  static final FToast _fToast = FToast()
    ..init(rootNavigatorKey.currentContext!);

  static void show(CustomToast toast) {
    _fToast
      ..removeQueuedCustomToasts()
      ..showToast(
        child: toast,
      );
  }
}
