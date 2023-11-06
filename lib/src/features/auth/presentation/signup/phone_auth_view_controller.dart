import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/utils/timer_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_auth_view_controller.g.dart';

@riverpod
class PhoneAuthViewController extends _$PhoneAuthViewController {
  @override
  FutureOr<void> build() {
    // ok to leave this empty if the return type is FutureOr<void>
  }

  Future<void> sendAuthCode() async {
    ref.watch(timerNotifierProvider.notifier).start();
  }

  Future<void> verifyAuthCode(String int) async {}
}

final nextButtonStateProvider = Provider((ref) {
  return null;
});
