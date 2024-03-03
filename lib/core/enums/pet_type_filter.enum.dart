import 'package:freezed_annotation/freezed_annotation.dart';

enum PetTypeFilter {
  @JsonValue('cat')
  cat(displayName: '고양이', code: 'cat'),
  @JsonValue('dog')
  dog(displayName: '강아지', code: 'dog'),

  @JsonValue('noMatter')
  noMatter(displayName: '상관없음', code: 'noMatter');

  const PetTypeFilter({required this.displayName, required this.code});
  final String displayName;
  final String code;
}
