// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pet _$$_PetFromJson(Map<String, dynamic> json) => _$_Pet(
      petType: $enumDecode(_$PetTypeEnumMap, json['petType']),
      name: json['name'] as String,
      neutered: json['neutered'] as bool,
      breed: json['breed'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      weight: (json['weight'] as num).toDouble(),
      profileImgUrl: json['profileImgUrl'] as String? ?? '',
      extraInfo: json['extraInfo'] as String? ?? '',
    );

Map<String, dynamic> _$$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'petType': _$PetTypeEnumMap[instance.petType]!,
      'name': instance.name,
      'neutered': instance.neutered,
      'breed': instance.breed,
      'birthDate': instance.birthDate.toIso8601String(),
      'weight': instance.weight,
      'profileImgUrl': instance.profileImgUrl,
      'extraInfo': instance.extraInfo,
    };

const _$PetTypeEnumMap = {
  PetType.cat: 'cat',
  PetType.dog: 'dog',
};
