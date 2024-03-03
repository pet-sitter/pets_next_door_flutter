// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Breed _$$_BreedFromJson(Map<String, dynamic> json) => _$_Breed(
      id: json['id'] as int,
      petType: $enumDecode(_$PetTypeEnumMap, json['petType']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_BreedToJson(_$_Breed instance) => <String, dynamic>{
      'id': instance.id,
      'petType': _$PetTypeEnumMap[instance.petType]!,
      'name': instance.name,
    };

const _$PetTypeEnumMap = {
  PetType.cat: 'cat',
  PetType.dog: 'dog',
};
