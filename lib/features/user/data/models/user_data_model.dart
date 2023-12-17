// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    required String id,
    required String email,
    @JsonKey(name: 'fbProviderType') required String firebaseProviderType,
    @JsonKey(name: 'fbUid') required String firebaseUid,
    required String fullname,
    required String nickname,
    String? profileImageUrl,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
