import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';

class TokenInterceptor implements Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final isUserAuthorized = ProviderContainer().read(isUserAuthorizedProvider);

    if (isUserAuthorized) {
      final token = '';
      options.headers['Authorization'] = 'Bearer $token';
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: 토큰 유효하지 않을 경우 로그아웃 로직 넣기
    return handler.next(err);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {}
}
