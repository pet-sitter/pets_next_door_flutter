import 'package:dio/dio.dart' hide Headers;
import 'package:pets_next_door_flutter/features/sign_up/data/dto/sign_up_data_dto.dart';
import 'package:pets_next_door_flutter/features/user/data/dto/user_data_dto.dart';
import 'package:retrofit/http.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserAPI {
  factory UserAPI(Dio dio, {String baseUrl}) = _UserAPI;

  @GET("/users/me")
  @Headers({"requiresToken": true})
  Future<UserDataDto> getUser();

  @POST("/users")
  @Headers({"requiresToken": false})
  Future<UserDataDto> createUser(@Body() SignUpDataDto signUpData);
}
