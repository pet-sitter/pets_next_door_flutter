// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpDataDto _$$_SignUpDataDtoFromJson(Map<String, dynamic> json) =>
    _$_SignUpDataDto(
      email: json['email'] as String,
      firebaseProviderType: json['fbProviderType'] as String,
      firebaseUid: json['fbUid'] as String,
      fullname: json['fullname'] as String,
      nickname: json['nickname'] as String,
      profileImageId: json['profileImageId'] as int,
    );

Map<String, dynamic> _$$_SignUpDataDtoToJson(_$_SignUpDataDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fbProviderType': instance.firebaseProviderType,
      'fbUid': instance.firebaseUid,
      'fullname': instance.fullname,
      'nickname': instance.nickname,
      'profileImageId': instance.profileImageId,
    };
