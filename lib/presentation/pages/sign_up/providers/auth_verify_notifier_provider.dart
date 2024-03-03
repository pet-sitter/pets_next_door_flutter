import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/utils/timer_notifier_provider.dart';

final authVerifyNotifierProvider = NotifierProvider<AuthVerifyNotifier, bool>(
  AuthVerifyNotifier.new,
);

final sendAuthCodeStateProvider = Provider((ref) {
  final timerState = ref.watch(timerNotifierProvider);

  if (timerState.isTimerTicking) {
    return SendAuthCodeState.codeSent;
  }

  if (timerState.timeLeft > Duration.zero) {
    return SendAuthCodeState.initial;
  } else {
    return SendAuthCodeState.resendable;
  }
});

enum SendAuthCodeState {
  initial,
  codeSent,
  resendable,
}

class AuthVerifyNotifier extends Notifier<bool> {
  String _authCode = '';

  @override
  bool build() {
    return false;
  }

  void sendAuthCode() {
    ref.watch(timerNotifierProvider.notifier).start();
    return;
  }

  void _verifyAuthCode() {
    // TODO: 여기서 필요한 통신 해야함
    final sendAuthCodeState = ref.watch(sendAuthCodeStateProvider);
    if (sendAuthCodeState != SendAuthCodeState.codeSent) {
      state = false;
    } else {
      if (_authCode == '12345') {
        state = true;
      } else {
        state = false;
      }
    }
  }

  void onAuthCodeChanged(String newCode) {
    _authCode = newCode;
    _verifyAuthCode();
  }
}
