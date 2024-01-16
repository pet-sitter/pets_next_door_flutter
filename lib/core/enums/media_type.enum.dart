import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';

enum AppMediaType {
  image('image'),
  video('video');

  const AppMediaType(this.code);

  final code;

  factory AppMediaType.getByTypeStr({required String type}) {
    return AppMediaType.values.firstWhere(
      (element) => element.code == type,
      orElse: () => throw ParsingEnumException(),
    );
  }
}
