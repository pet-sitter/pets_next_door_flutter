import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_condition_dto.dart';

part 'sos_condition_entity.freezed.dart';

@freezed
class SosConditionEntity with _$SosConditionEntity {
  const SosConditionEntity._();
  const factory SosConditionEntity({
    required int code,
    required String iconImgUrl,
    required String text,
  }) = _SosConditionEntity;

  factory SosConditionEntity.fromDto(SosConditionDto dto) => SosConditionEntity(
        code: dto.id,
        iconImgUrl: '',
        text: dto.name,
      );
}
