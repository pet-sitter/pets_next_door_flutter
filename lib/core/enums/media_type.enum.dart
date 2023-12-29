import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';

enum MediaType {
  image('image'),
  video('video');

  const MediaType(this.code);

  final code;

  factory MediaType.getByTypeStr({required String type}) {
    return MediaType.values.firstWhere(
      (element) => element.code == type,
      orElse: () => throw ParsingEnumException(),
    );
  }
}
