import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository.dart';

final class GetCustomTokenUseCase {
  const GetCustomTokenUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<Result<UserCredential>> call(OAuthToken oAuthToken) async {
// TODO: 커스텀 토큰 발급 로직 붙이기
    throw UnimplementedError();
  }
}
