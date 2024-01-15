// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_data_dto.freezed.dart';
part 'sign_up_data_dto.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@freezed
class SignUpDataDto with _$SignUpDataDto {
  const factory SignUpDataDto({
    required String email,
    @JsonKey(name: 'fbProviderType') required String firebaseProviderType,
    @JsonKey(name: 'fbUid') required String firebaseUid,
    required String fullname,
    required String nickname,
    required int profileImageId,
  }) = _SignUpDataDto;

  factory SignUpDataDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataDtoFromJson(json);
}
