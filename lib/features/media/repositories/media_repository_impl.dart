import 'dart:io';

import 'package:pets_next_door_flutter/core/enums/image_format.enum.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/media/data/remote/media_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/media/entities/media_image_entity.dart';
import 'package:pets_next_door_flutter/features/media/repositories/media_repository.dart';

final class MediaRepositoryImpl implements MediaRepository {
  const MediaRepositoryImpl(this._dataSource);

  final MediaRemoteDataSource _dataSource;
  @override
  Future<Result<MediaImageEntity>> uploadImage(File image,
      {required ImageFormat imageFormat}) async {
    try {
      final uploadedImage = await _dataSource.uploadImage(image, imageFormat);
      return Result.success(MediaImageEntity.fromDto(dto: uploadedImage));
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
