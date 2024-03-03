// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_firebase_auth_data_provider.freezed.dart';
part 'sign_up_firebase_auth_data_provider.g.dart';

@Riverpod(keepAlive: true)
class SignUpFirebaseAuthData extends _$SignUpFirebaseAuthData {
  @override
  FirebaseAuthData build() {
    final userAuth = ref.watch(userAuthProvider);

    if (userAuth == null) throw NoFirebaseUserException();

    if (userAuth.email == null) throw NoFirebaseUserEssentialDataException();

    if (userAuth.displayName == null)
      throw NoFirebaseUserEssentialDataException();

    return FirebaseAuthData(
      email: userAuth.email ?? '',
      firebaseUid: userAuth.uid,
      firebaseProviderType: SnsProviderType.getByProviderId(
          providerId: userAuth.providerData.first.providerId),
      fullname: userAuth.displayName ?? '',
    );
  }
}

@freezed
class FirebaseAuthData with _$FirebaseAuthData {
  const factory FirebaseAuthData({
    required SnsProviderType firebaseProviderType,
    required String firebaseUid,
    required String email,
    required String fullname,
  }) = _FirebaseAuthData;

  const FirebaseAuthData._();
}
