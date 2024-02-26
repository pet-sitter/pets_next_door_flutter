// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SosPostDto _$SosPostDtoFromJson(Map<String, dynamic> json) => SosPostDto(
      id: json['id'] as int,
      author: AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => SosConditionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => MediaImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      dateStartAt: json['date_start_at'] as String,
      dateEndAt: json['date_end_at'] as String,
      thumbnailId: json['thumbnail_id'] as int,
      reward: json['reward'] as String,
      rewardAmount: json['reward_amount'] as String,
      pets: (json['pets'] as List<dynamic>)
          .map((e) => PetDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SosPostDtoToJson(SosPostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'title': instance.title,
      'content': instance.content,
      'date_start_at': instance.dateStartAt,
      'date_end_at': instance.dateEndAt,
      'thumbnail_id': instance.thumbnailId,
      'conditions': instance.conditions,
      'media': instance.media,
      'reward': instance.reward,
      'reward_amount': instance.rewardAmount,
      'pets': instance.pets,
    };
