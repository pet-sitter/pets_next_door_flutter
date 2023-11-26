// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userProfileControllerHash() =>
    r'75046957712b638f35a27d19facd76b4cbf22796';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UserProfileController
    extends BuildlessAutoDisposeAsyncNotifier<ProfileForm> {
  late final ProfileForm previousProfile;

  Future<ProfileForm> build(
    ProfileForm previousProfile,
  );
}

/// See also [UserProfileController].
@ProviderFor(UserProfileController)
const userProfileControllerProvider = UserProfileControllerFamily();

/// See also [UserProfileController].
class UserProfileControllerFamily extends Family<AsyncValue<ProfileForm>> {
  /// See also [UserProfileController].
  const UserProfileControllerFamily();

  /// See also [UserProfileController].
  UserProfileControllerProvider call(
    ProfileForm previousProfile,
  ) {
    return UserProfileControllerProvider(
      previousProfile,
    );
  }

  @override
  UserProfileControllerProvider getProviderOverride(
    covariant UserProfileControllerProvider provider,
  ) {
    return call(
      provider.previousProfile,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userProfileControllerProvider';
}

/// See also [UserProfileController].
class UserProfileControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserProfileController,
        ProfileForm> {
  /// See also [UserProfileController].
  UserProfileControllerProvider(
    this.previousProfile,
  ) : super.internal(
          () => UserProfileController()..previousProfile = previousProfile,
          from: userProfileControllerProvider,
          name: r'userProfileControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userProfileControllerHash,
          dependencies: UserProfileControllerFamily._dependencies,
          allTransitiveDependencies:
              UserProfileControllerFamily._allTransitiveDependencies,
        );

  final ProfileForm previousProfile;

  @override
  bool operator ==(Object other) {
    return other is UserProfileControllerProvider &&
        other.previousProfile == previousProfile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, previousProfile.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<ProfileForm> runNotifierBuild(
    covariant UserProfileController notifier,
  ) {
    return notifier.build(
      previousProfile,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
