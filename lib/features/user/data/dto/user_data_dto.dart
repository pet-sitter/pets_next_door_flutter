// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_dto.freezed.dart';
part 'user_data_dto.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@freezed
class UserDataDto with _$UserDataDto {
  const factory UserDataDto({
    required int id,
    required String email,
    @JsonKey(name: 'fbProviderType') required String firebaseProviderType,
    required String fullname,
    required String nickname,
    @Default([]) List<String> petIdList,
    String? profileImageUrl,
  }) = _UserDataDto;

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);
}
