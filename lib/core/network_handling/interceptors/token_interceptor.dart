import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';

class TokenInterceptor implements Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final requiresToken = (options.headers['requiresToken'] ?? true) as bool;

    if (!requiresToken) return handler.next(options);

    final isUserAuthorized = (FirebaseAuth.instance.currentUser != null);

    if (isUserAuthorized) {
      final token = await getUserTokenUseCase.call();
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
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
