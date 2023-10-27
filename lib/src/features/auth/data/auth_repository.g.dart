// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authSignInOrRegisterHash() =>
    r'affe886cb38677d633a1a8cbbbaed4e577ca8679';

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

typedef AuthSignInOrRegisterRef = AutoDisposeFutureProviderRef<AuthStatus>;

/// See also [authSignInOrRegister].
@ProviderFor(authSignInOrRegister)
const authSignInOrRegisterProvider = AuthSignInOrRegisterFamily();

/// See also [authSignInOrRegister].
class AuthSignInOrRegisterFamily extends Family<AsyncValue<AuthStatus>> {
  /// See also [authSignInOrRegister].
  const AuthSignInOrRegisterFamily();

  /// See also [authSignInOrRegister].
  AuthSignInOrRegisterProvider call(
    SnsProviderType providerType,
  ) {
    return AuthSignInOrRegisterProvider(
      providerType,
    );
  }

  @override
  AuthSignInOrRegisterProvider getProviderOverride(
    covariant AuthSignInOrRegisterProvider provider,
  ) {
    return call(
      provider.providerType,
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
  String? get name => r'authSignInOrRegisterProvider';
}

/// See also [authSignInOrRegister].
class AuthSignInOrRegisterProvider
    extends AutoDisposeFutureProvider<AuthStatus> {
  /// See also [authSignInOrRegister].
  AuthSignInOrRegisterProvider(
    this.providerType,
  ) : super.internal(
          (ref) => authSignInOrRegister(
            ref,
            providerType,
          ),
          from: authSignInOrRegisterProvider,
          name: r'authSignInOrRegisterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authSignInOrRegisterHash,
          dependencies: AuthSignInOrRegisterFamily._dependencies,
          allTransitiveDependencies:
              AuthSignInOrRegisterFamily._allTransitiveDependencies,
        );

  final SnsProviderType providerType;

  @override
  bool operator ==(Object other) {
    return other is AuthSignInOrRegisterProvider &&
        other.providerType == providerType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, providerType.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
