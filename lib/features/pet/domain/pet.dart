import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class Pet with _$Pet {
  factory Pet({
    PetType? petType,
    String? name,
    bool? neutered,
    String? breed,
    DateTime? birthDate,
    double? weight,
    @Default('') String? profileImgUrl,
    @Default('') String? extraInfo,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}

final petStateProvider = StateProvider.autoDispose<Pet>((ref) => Pet());
