import 'dart:io';

import 'package:pets_next_door_flutter/core/enums/image_format.enum.dart';
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';

abstract interface class MediaRemoteDataSource {
  Future<MediaImageDto> uploadImage(File imageFile, ImageFormat imageFormat);

  Future<MediaImageDto> getImage(int imageId);
}
