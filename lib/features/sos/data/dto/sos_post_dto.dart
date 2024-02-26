// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';
import 'package:pets_next_door_flutter/features/pet/data/dto/pet_data_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/author_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_condition_dto.dart';

part 'sos_post_dto.g.dart';

/// 급구의 돌봄조건 dto
@JsonSerializable()
class SosPostDto {
  final int id;
  final AuthorDto author;
  final String title;
  final String content;
  @JsonKey(name: 'date_start_at')
  final String dateStartAt;
  @JsonKey(name: 'date_end_at')
  final String dateEndAt;
  @JsonKey(name: 'thumbnail_id')
  final int thumbnailId;
  final List<SosConditionDto> conditions;
  final List<MediaImageDto> media;
  final String reward;
  @JsonKey(name: 'reward_amount')
  final String rewardAmount;
  final List<PetDataDto> pets;

  SosPostDto({
    required this.id,
    required this.author,
    required this.conditions,
    required this.content,
    required this.media,
    required this.title,
    required this.dateStartAt,
    required this.dateEndAt,
    required this.thumbnailId,
    required this.reward,
    required this.rewardAmount,
    required this.pets,
  });

  factory SosPostDto.fromJson(Map<String, dynamic> json) =>
      _$SosPostDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SosPostDtoToJson(this);
}
