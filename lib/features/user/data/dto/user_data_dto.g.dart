// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataDto _$$_UserDataDtoFromJson(Map<String, dynamic> json) =>
    _$_UserDataDto(
      id: json['id'] as int,
      email: json['email'] as String,
      firebaseProviderType: json['fbProviderType'] as String,
      fullname: json['fullname'] as String,
      nickname: json['nickname'] as String,
      petIdList: (json['petIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      profileImageUrl: json['profileImageUrl'] as String?,
    );

Map<String, dynamic> _$$_UserDataDtoToJson(_$_UserDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fbProviderType': instance.firebaseProviderType,
      'fullname': instance.fullname,
      'nickname': instance.nickname,
      'petIdList': instance.petIdList,
      'profileImageUrl': instance.profileImageUrl,
    };
