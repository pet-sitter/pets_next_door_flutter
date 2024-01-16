import 'dart:io';

import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/core/services/image_picker_service.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/media/entities/media_image_entity.dart';
import 'package:pets_next_door_flutter/features/media/repositories/media_repository.dart';

final class UploadImageUseCase {
  const UploadImageUseCase(
    this._mediaRepository,
  );

  final MediaRepository _mediaRepository;

  Future<Result<MediaImageEntity>> call(File image) async {
    final compressedFile =
        await ImagePickerService.compressAndConvertFormat(image);

    if (compressedFile == null) {
      return Result.failure(ImageNotCompressedException());
    }

    final imageFormat = ImagePickerService.getImageFormat(compressedFile);

    if (imageFormat == null) {
      return Result.failure(InvalidMimeTypeException());
    }

    return _mediaRepository.uploadImage(
      compressedFile,
      imageFormat: imageFormat,
    );
  }
}
