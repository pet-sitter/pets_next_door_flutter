import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/signup/auth_verify_notifier_provider.dart';
import 'package:pets_next_door_flutter/src/utils/timer_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final codeVerifyProvider = Provider((ref) {
  final timeLeft = ref.watch(timerProvider).timeLeft;
  final authVerified = ref.watch(authVerifyNotifierProvider);

  return timeLeft > Duration.zero && authVerified;
});
