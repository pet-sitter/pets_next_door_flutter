import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_type.freezed.dart';

@freezed
sealed class ImageType with _$ImageType {
  const factory ImageType.network(String? url) = ImageTypeNetwork;

  const factory ImageType.file(File? file) = ImageTypeFile;

  const factory ImageType.asset(String? path) = ImageTypeAsset;
}
