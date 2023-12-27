// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userTokenHash() => r'1170b0e699e542d1611cd7f7208d0976abcb0b87';

/// See also [userToken].
@ProviderFor(userToken)
final userTokenProvider = AutoDisposeFutureProvider<String?>.internal(
  userToken,
  name: r'userTokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserTokenRef = AutoDisposeFutureProviderRef<String?>;
String _$userDataHash() => r'0587e70e7b6971b9fc900e5134c57fe9c8008edc';

/// See also [UserData].
@ProviderFor(UserData)
final userDataProvider =
    AsyncNotifierProvider<UserData, UserDataEntity?>.internal(
  UserData.new,
  name: r'userDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserData = AsyncNotifier<UserDataEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
