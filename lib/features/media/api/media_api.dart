import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'media_api.g.dart';

@RestApi()
abstract class MediaAPI {
  factory MediaAPI(Dio dio, {String baseUrl}) = _MediaAPI;

  @GET("/media/images")
  @Headers({"requiresToken": true})
  @MultiPart()
  Future<MediaImageDto> uploadImage(@Part() File imageFile);
}
