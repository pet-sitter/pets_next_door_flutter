import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';

class ExceptionHandler {
  static showToast(Exception e) {
    if (Exception is CustomException) {
      final exception = e as CustomException;
      ToastService.show(NormalToast(message: '${exception.message}'));
    } else {
      ToastService.show(NormalToast(message: '$e'));
    }
  }
}
