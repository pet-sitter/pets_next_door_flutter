import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthAPI {
  factory AuthAPI(Dio dio, {String baseUrl}) = _AuthAPI;

  @POST("/auth/token")
  @Headers({"requiresToken": false})
  Future<String> customToken(@Body() String oAuthToken);
}
