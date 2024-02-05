import 'dart:io';

import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/enums/image_format.enum.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/media/api/media_api.dart';
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';
import 'package:pets_next_door_flutter/features/media/data/remote/media_remote_data_source.dart';

final class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  final _api = MediaAPI(AppDio.instance, baseUrl: Flavor.apiUrl);

  @override
  Future<MediaImageDto> uploadImage(File imageFile, ImageFormat imageFormat) {
    return _api.uploadImage(imageFile, imageFormat.name);
  }

  @override
  Future<MediaImageDto> getImage(int imageId) {
    return _api.getImage(imageId);
  }
}
