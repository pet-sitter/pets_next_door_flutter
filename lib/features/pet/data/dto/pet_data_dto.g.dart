// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetDataListDto _$PetDataListDtoFromJson(Map<String, dynamic> json) =>
    PetDataListDto(
      pets: (json['pets'] as List<dynamic>)
          .map((e) => PetDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PetDataListDtoToJson(PetDataListDto instance) =>
    <String, dynamic>{
      'pets': instance.pets,
    };

PetDataDto _$PetDataDtoFromJson(Map<String, dynamic> json) => PetDataDto(
      id: json['id'] as int,
      birthDate: json['birth_date'] as String,
      breed: json['breed'] as String,
      name: json['name'] as String,
      neutered: json['neutered'] as bool,
      petType: json['pet_type'] as String,
      sex: json['sex'] as String,
      weightKg: json['weight_in_kg'] as int,
    );

Map<String, dynamic> _$PetDataDtoToJson(PetDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birth_date': instance.birthDate,
      'breed': instance.breed,
      'name': instance.name,
      'neutered': instance.neutered,
      'pet_type': instance.petType,
      'sex': instance.sex,
      'weight_in_kg': instance.weightKg,
    };
