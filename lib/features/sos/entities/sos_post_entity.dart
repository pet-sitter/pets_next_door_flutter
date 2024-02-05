import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/media/entities/media_image_entity.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_post_dto.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_condition_entity.dart';

part 'sos_post_entity.freezed.dart';

@freezed
class SosPostEntity with _$SosPostEntity {
  const SosPostEntity._();
  const factory SosPostEntity({
    required String title,
    required String thumbnailUrl,
    required List<MediaImageEntity> mediaList,
    required List<SosConditionEntity> conditionList,
    required DateTime careStartAt,
    required DateTime careEndAt,
    required String reward,
    required String rewardPer,
  }) = _SosPostEntity;

  factory SosPostEntity.fromDto(SosPostDto dto) {
    String thumbnailUrl;
    try {
      thumbnailUrl =
          dto.media.firstWhere((element) => element.id == dto.thumbnailId).url;
    } catch (e) {
      // 썸네일이 없음
      thumbnailUrl = dto.media.firstOrNull?.url ?? '';
    }

    return SosPostEntity(
      title: dto.title,
      thumbnailUrl: thumbnailUrl,
      mediaList:
          dto.media.map((e) => MediaImageEntity.fromDto(dto: e)).toList(),
      conditionList:
          dto.conditions.map((e) => SosConditionEntity.fromDto(e)).toList(),
      careEndAt: DateTime.parse(dto.dateEndAt),
      careStartAt: DateTime.parse(dto.dateStartAt),
      reward: dto.reward,
      rewardPer: dto.rewardAmount,
    );
  }
}
