// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_data_dto.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@JsonSerializable()
class SignUpDataDto {
  final String email;
  @JsonKey(name: 'fbProviderType')
  final String firebaseProviderType;
  @JsonKey(name: 'fbUid')
  final String firebaseUid;
  final String fullname;
  final String nickname;
  final int profileImageId;

  SignUpDataDto({
    required this.email,
    required this.firebaseProviderType,
    required this.firebaseUid,
    required this.fullname,
    required this.nickname,
    required this.profileImageId,
  });

  factory SignUpDataDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataDtoToJson(this);
}
