import 'package:flutter_riverpod/flutter_riverpod.dart';

final authVerifyNotifierProvider = NotifierProvider<AuthVerifyNotifier, bool>(
  AuthVerifyNotifier.new,
);

class AuthVerifyNotifier extends Notifier<bool> {
  String _authCode = '';

  @override
  bool build() {
    return true;
  }

  sendAuthCode() {}

  verifyAuthCode() {}

  void onAuthCodeChanged(String newCode) {
    _authCode = newCode;
  }
}
