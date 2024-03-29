// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isUserAuthorizedHash() => r'6eb8b9bb525aec1c6d8222111275017d13ead82c';

/// 현재 앱 사용자가 인증되었는지 여부
///
/// Copied from [isUserAuthorized].
@ProviderFor(isUserAuthorized)
final isUserAuthorizedProvider = AutoDisposeProvider<bool>.internal(
  isUserAuthorized,
  name: r'isUserAuthorizedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isUserAuthorizedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsUserAuthorizedRef = AutoDisposeProviderRef<bool>;
String _$userAuthHash() => r'cbe7dff6b06994442d699e7ac041793e0e2128a4';

/// 앱 사용자 권한 프로바이더
///
/// Copied from [UserAuth].
@ProviderFor(UserAuth)
final userAuthProvider = NotifierProvider<UserAuth, User?>.internal(
  UserAuth.new,
  name: r'userAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserAuth = Notifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
