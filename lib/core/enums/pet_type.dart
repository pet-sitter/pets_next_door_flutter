import 'package:freezed_annotation/freezed_annotation.dart';

enum PetType {
  @JsonValue('cat')
  cat(displayName: '고양이', code: 'cat'),
  @JsonValue('dog')
  dog(displayName: '강아지', code: 'dog');

  const PetType({required this.displayName, required this.code});
  final String displayName;
  final String code;
}
