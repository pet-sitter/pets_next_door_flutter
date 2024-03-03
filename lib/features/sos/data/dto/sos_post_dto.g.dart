// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SosPostDto _$SosPostDtoFromJson(Map<String, dynamic> json) => SosPostDto(
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => SosConditionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => MediaImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      dateStartAt: json['dateStartAt'] as String,
      dateEndAt: json['dateEndAt'] as String,
      thumbnailId: json['thumbnailId'] as int,
      reward: json['reward'] as String,
      rewardAmount: json['rewardAmount'] as String,
      pets: (json['pets'] as List<dynamic>)
          .map((e) => PetDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SosPostDtoToJson(SosPostDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'content': instance.content,
      'dateStartAt': instance.dateStartAt,
      'dateEndAt': instance.dateEndAt,
      'thumbnailId': instance.thumbnailId,
      'conditions': instance.conditions,
      'media': instance.media,
      'reward': instance.reward,
      'rewardAmount': instance.rewardAmount,
      'pets': instance.pets,
    };
