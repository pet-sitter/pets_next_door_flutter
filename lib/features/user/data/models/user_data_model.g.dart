// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      email: json['email'] as String,
      firebaseProviderType: json['fbProviderType'] as String,
      firebaseUid: json['fbUid'] as String,
      fullname: json['fullname'] as String,
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fbProviderType': instance.firebaseProviderType,
      'fbUid': instance.firebaseUid,
      'fullname': instance.fullname,
      'id': instance.id,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
    };
