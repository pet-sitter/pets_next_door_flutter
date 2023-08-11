// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';

part 'registration_info.g.dart';
part 'registration_info.freezed.dart';

/// 회원가입을 위해 DB에 등록하는데 필요한 데이터 목록
/// - [email] : 유저의 이메일
/// - [providerType] : 회원가입에 사용한 sns provider 타입
/// - [firebaseUid] : firebase로그인 후 발급받은 firebas uid
/// - [fullname] : 유저의 실제 이름
/// - [nickname] : 유저가 설정한 닉네임
@freezed
class RegistrationInfo with _$RegistrationInfo {
  factory RegistrationInfo({
    required String email,
    required SnsProviderType providerType,
    required String firebaseUid,
    required String fullname,
    required String nickname,
  }) = _RegistrationInfo;

  factory RegistrationInfo.fromJson(Map<String, dynamic> json) =>
      _$RegistrationInfoFromJson(json);
}
