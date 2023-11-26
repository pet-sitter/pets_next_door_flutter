// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDto _$$_UserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDto(
      email: json['email'] as String,
      providerType:
          $enumDecode(_$SnsProviderTypeEnumMap, json['fbProviderType']),
      firebaseUid: json['fbUid'] as String,
      fullname: json['fullname'] as String?,
      nickname: json['nickname'] as String?,
      profileImageId: json['profileImageId'] as int?,
      pets: (json['pets'] as List<dynamic>?)
          ?.map((e) => Pet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserInfoDtoToJson(_$_UserInfoDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fbProviderType': _$SnsProviderTypeEnumMap[instance.providerType]!,
      'fbUid': instance.firebaseUid,
      'fullname': instance.fullname,
      'nickname': instance.nickname,
      'profileImageId': instance.profileImageId,
      'pets': instance.pets,
    };

const _$SnsProviderTypeEnumMap = {
  SnsProviderType.kakao: 'kakao',
  SnsProviderType.google: 'google',
  SnsProviderType.apple: 'apple',
};
