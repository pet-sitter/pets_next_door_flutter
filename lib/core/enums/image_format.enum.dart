import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';

enum ImageFormat {
  png('png'),
  jpeg('jpeg');

  const ImageFormat(this.str);

  final str;

  factory ImageFormat.getByTypeStr({required String type}) {
    return ImageFormat.values.firstWhere(
      (element) => element.str == type,
      orElse: () => throw ParsingEnumException(),
    );
  }
}
