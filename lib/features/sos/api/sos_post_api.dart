import 'package:dio/dio.dart' hide Headers;
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_response_dto.dart';
import 'package:retrofit/http.dart';

part 'sos_post_api.g.dart';

@RestApi()
abstract class SosPostAPI {
  factory SosPostAPI(Dio dio, {String baseUrl}) = _SosPostAPI;

  @GET("/posts/sos")
  @Headers({"requiresToken": false})
  Future<SosPostPaginationResponseDto> getSosPosts(
    @Queries() SosPostPaginationRequestDto sosPostsRequest,
  );
}
