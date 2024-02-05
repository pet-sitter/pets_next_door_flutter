// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sos_condition_dto.g.dart';

/// 급구의 돌봄조건 dto
@JsonSerializable()
class SosConditionDto {
  final int id;
  final String name;

  SosConditionDto({required this.id, required this.name});

  factory SosConditionDto.fromJson(Map<String, dynamic> json) =>
      _$SosConditionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SosConditionDtoToJson(this);
}
