// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationInfo _$$_RegistrationInfoFromJson(Map<String, dynamic> json) =>
    _$_RegistrationInfo(
      email: json['email'] as String,
      providerType: $enumDecode(_$ProviderTypeEnumMap, json['providerType']),
      firebaseUid: json['firebaseUid'] as String,
      fullname: json['fullname'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$_RegistrationInfoToJson(_$_RegistrationInfo instance) =>
    <String, dynamic>{
      'email': instance.email,
      'providerType': _$ProviderTypeEnumMap[instance.providerType]!,
      'firebaseUid': instance.firebaseUid,
      'fullname': instance.fullname,
      'nickname': instance.nickname,
    };

const _$ProviderTypeEnumMap = {
  ProviderType.kakao: 'kakao',
  ProviderType.google: 'google',
  ProviderType.apple: 'apple',
};
