// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_dto.g.dart';

/// 게시물 작성자 정보 dto
@JsonSerializable()
class AuthorDto {
  final int id;
  final String nickname;
  final String? profileImageUrl;

  AuthorDto(
      {required this.id,
      required this.nickname,
      required this.profileImageUrl});

  factory AuthorDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDtoToJson(this);
}
