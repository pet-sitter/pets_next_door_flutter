import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/pet/data/dto/pet_data_dto.dart';

part 'pet_data_entity.freezed.dart';

@freezed
class PetDataEntity with _$PetDataEntity {
  const PetDataEntity._();
  const factory PetDataEntity({
    required int code,
    required String iconImgUrl,
    required String text,
  }) = _PetDataEntity;

  factory PetDataEntity.fromDto(PetDataDto dto) => PetDataEntity(
        code: dto.id,
        iconImgUrl: '',
        text: dto.name,
      );
}
