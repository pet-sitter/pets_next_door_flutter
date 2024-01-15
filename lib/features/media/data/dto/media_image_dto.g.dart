// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaImageDto _$$_MediaImageDtoFromJson(Map<String, dynamic> json) =>
    _$_MediaImageDto(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      mediaType: json['mediaType'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_MediaImageDtoToJson(_$_MediaImageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'mediaType': instance.mediaType,
      'url': instance.url,
    };
