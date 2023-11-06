// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_view_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userProfileFutureHash() => r'9a25e0eb0daf21a4f351e40f15ab93a06718c0be';

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

typedef UserProfileFutureRef = AutoDisposeFutureProviderRef<ProfileForm>;

/// See also [userProfileFuture].
@ProviderFor(userProfileFuture)
const userProfileFutureProvider = UserProfileFutureFamily();

/// See also [userProfileFuture].
class UserProfileFutureFamily extends Family<AsyncValue<ProfileForm>> {
  /// See also [userProfileFuture].
  const UserProfileFutureFamily();

  /// See also [userProfileFuture].
  UserProfileFutureProvider call(
    int id,
  ) {
    return UserProfileFutureProvider(
      id,
    );
  }

  @override
  UserProfileFutureProvider getProviderOverride(
    covariant UserProfileFutureProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'userProfileFutureProvider';
}

/// See also [userProfileFuture].
class UserProfileFutureProvider extends AutoDisposeFutureProvider<ProfileForm> {
  /// See also [userProfileFuture].
  UserProfileFutureProvider(
    this.id,
  ) : super.internal(
          (ref) => userProfileFuture(
            ref,
            id,
          ),
          from: userProfileFutureProvider,
          name: r'userProfileFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userProfileFutureHash,
          dependencies: UserProfileFutureFamily._dependencies,
          allTransitiveDependencies:
              UserProfileFutureFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is UserProfileFutureProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$userProfileViewControllerHash() =>
    r'0bcf4aa136b22329f3b2b689f498f506e5f0f9a8';

/// See also [UserProfileViewController].
@ProviderFor(UserProfileViewController)
final userProfileViewControllerProvider =
    AutoDisposeNotifierProvider<UserProfileViewController, void>.internal(
  UserProfileViewController.new,
  name: r'userProfileViewControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userProfileViewControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserProfileViewController = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
