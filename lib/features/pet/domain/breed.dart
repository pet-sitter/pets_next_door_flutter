import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';

part 'breed.g.dart';
part 'breed.freezed.dart';

@freezed
class Breed with _$Breed {
  factory Breed({
    required int id,
    @JsonKey(name: 'pet_type') required PetType petType,
    required String name,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
}
