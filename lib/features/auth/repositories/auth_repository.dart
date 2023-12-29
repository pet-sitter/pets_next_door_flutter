import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';

abstract interface class AuthRepository {
  Future<Result<UserCredential>> signInOAuth(SnsProviderType provider);
  Future<Result<void>> signOut();
  Future<Result<String>> customToken(OAuthToken oAuthToken);
}
