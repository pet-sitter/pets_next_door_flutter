import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';

part 'pet.g.dart';
part 'pet.freezed.dart';

@freezed
class Pet with _$Pet {
  factory Pet({
    required PetType petType,
    required String name,
    required bool neutered,
    required String breed,
    required DateTime birthDate,
    required double weight,
    @Default('') String? profileImgUrl,
    @Default('') String? extraInfo,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
