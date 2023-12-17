import 'package:dio/dio.dart';
import 'package:pets_next_door_flutter/features/user/data/models/user_data_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserAPI {
  factory UserAPI(Dio dio, {String baseUrl}) = _UserAPI;

  @GET("/users/me")
  Future<UserDataModel> getUserData();
}
