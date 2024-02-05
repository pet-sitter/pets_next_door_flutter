// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_data_dto.g.dart';

/// api 통신을 통해 가져오는 유저 데이터 모델
@JsonSerializable()
class PetDataDto {
  final int id;
  @JsonKey(name: 'birth_date')
  final String birthDate;
  final String breed;
  final String name;
  final bool neutered;
  @JsonKey(name: 'pet_type')
  final String petType;
  final String sex;
  @JsonKey(name: 'weight_in_kg')
  final int weightKg;

  PetDataDto({
    required this.id,
    required this.birthDate,
    required this.breed,
    required this.name,
    required this.neutered,
    required this.petType,
    required this.sex,
    required this.weightKg,
  });

  factory PetDataDto.fromJson(Map<String, dynamic> json) =>
      _$PetDataDtoFromJson(json);
}
