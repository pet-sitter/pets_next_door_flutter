import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type.dart';
import 'package:pets_next_door_flutter/core/enums/sex_type.enum.dart';
import 'package:pets_next_door_flutter/core/helper/date_time_extension.dart';
import 'package:pets_next_door_flutter/features/pet/data/dto/pet_data_dto.dart';

part 'pet_data_entity.freezed.dart';

@freezed
class PetDataEntity with _$PetDataEntity {
  const PetDataEntity._();
  const factory PetDataEntity({
    required int id,
    required int age,
    required String name,
    required bool neutered,
    required PetType petType,
    required SexType sexType,
    required int weightKg,
    required String breed,
  }) = _PetDataEntity;

  factory PetDataEntity.fromDto(PetDataDto dto) {
    return PetDataEntity(
        id: dto.id,
        age: DateTime.parse(dto.birthDate).ageFromNow,
        name: dto.name,
        neutered: dto.neutered,
        petType: PetType.getByCode(dto.petType),
        sexType: SexType.getByCode(dto.sex),
        weightKg: dto.weightInKg,
        breed: dto.breed);
  }
}
