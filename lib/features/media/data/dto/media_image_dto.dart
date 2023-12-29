// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_image_dto.freezed.dart';
part 'media_image_dto.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@freezed
class MediaImageDto with _$MediaImageDto {
  const factory MediaImageDto({
    required int id,
    required String createdAt,
    required String mediaType,
    required String url,
  }) = _MediaImageDto;

  factory MediaImageDto.fromJson(Map<String, dynamic> json) =>
      _$MediaImageDtoFromJson(json);
}
