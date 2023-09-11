import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_auth_view_controller.g.dart';

@riverpod
class PhoneAuthViewController extends _$PhoneAuthViewController {
  static const Duration _authCodeTime = Duration(minutes: 3);

  Duration authCodeTimeLeft = _authCodeTime;

  late Timer _timer;

  @override
  FutureOr<void> build() {
    // ok to leave this empty if the return type is FutureOr<void>
  }

  Future<void> sendAuthCode() async {
    _startAuthCodeTimer();
  }

  Future<void> verifyAuthCode(String int) async {}

  void _startAuthCodeTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      authCodeTimeLeft -= Duration(seconds: _timer.tick);
    });
  }

  void _resetAuthCodeTimer() {
    authCodeTimeLeft = _authCodeTime;
    _timer.cancel();
  }
}
