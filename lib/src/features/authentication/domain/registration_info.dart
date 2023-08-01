// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';

part 'registration_info.g.dart';
part 'registration_info.freezed.dart';

/// Forecast data parsed from the API response (not used directly in the UI)
@freezed
class RegistrationInfo with _$RegistrationInfo {
  factory RegistrationInfo({
    required String email,
    required ProviderType providerType,
    required String firebaseUid,
    required String fullname,
    required String nickname,
  }) = _RegistrationInfo;

  factory RegistrationInfo.fromJson(Map<String, dynamic> json) =>
      _$RegistrationInfoFromJson(json);
}
