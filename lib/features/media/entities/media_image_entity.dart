// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/enums/media_type.enum.dart';
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';

part 'media_image_entity.freezed.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@freezed
class MediaImageEntity with _$MediaImageEntity {
  const factory MediaImageEntity({
    required int id,
    required DateTime createdAt,
    required MediaType mediaType,
    required String url,
  }) = _MediaImageEntity;

  const MediaImageEntity._();

  factory MediaImageEntity.fromDto({required MediaImageDto dto}) =>
      MediaImageEntity(
        id: dto.id,
        createdAt:
            DateTime.fromMillisecondsSinceEpoch(int.parse(dto.createdAt)),
        mediaType: MediaType.getByTypeStr(type: dto.mediaType),
        url: dto.url,
      );
}
