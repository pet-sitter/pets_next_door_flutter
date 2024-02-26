// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDto _$AuthorDtoFromJson(Map<String, dynamic> json) => AuthorDto(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
    );

Map<String, dynamic> _$AuthorDtoToJson(AuthorDto instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
    };
