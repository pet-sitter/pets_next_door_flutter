import 'dart:io';

import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/media/entities/media_image_entity.dart';

abstract interface class MediaRepository {
  Future<Result<MediaImageEntity>> uploadImage(File imageFile);
}
