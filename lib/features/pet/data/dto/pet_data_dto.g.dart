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
      birthDate: json['birthDate'] as String,
      breed: json['breed'] as String,
      name: json['name'] as String,
      neutered: json['neutered'] as bool,
      petType: json['petType'] as String,
      sex: json['sex'] as String,
      weightInKg: json['weightInKg'] as int,
    );

Map<String, dynamic> _$PetDataDtoToJson(PetDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birthDate': instance.birthDate,
      'breed': instance.breed,
      'name': instance.name,
      'neutered': instance.neutered,
      'petType': instance.petType,
      'sex': instance.sex,
      'weightInKg': instance.weightInKg,
    };
