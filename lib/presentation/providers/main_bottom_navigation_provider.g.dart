// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_bottom_navigation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainBottomNavigationHash() =>
    r'd4bf07b2dfcd303b88483cd8758c1ee85d83e329';

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

abstract class _$MainBottomNavigation
    extends BuildlessNotifier<MainNavigationTab> {
  late final StatefulNavigationShell shell;

  MainNavigationTab build(
    StatefulNavigationShell shell,
  );
}

/// See also [MainBottomNavigation].
@ProviderFor(MainBottomNavigation)
const mainBottomNavigationProvider = MainBottomNavigationFamily();

/// See also [MainBottomNavigation].
class MainBottomNavigationFamily extends Family<MainNavigationTab> {
  /// See also [MainBottomNavigation].
  const MainBottomNavigationFamily();

  /// See also [MainBottomNavigation].
  MainBottomNavigationProvider call(
    StatefulNavigationShell shell,
  ) {
    return MainBottomNavigationProvider(
      shell,
    );
  }

  @override
  MainBottomNavigationProvider getProviderOverride(
    covariant MainBottomNavigationProvider provider,
  ) {
    return call(
      provider.shell,
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
  String? get name => r'mainBottomNavigationProvider';
}

/// See also [MainBottomNavigation].
class MainBottomNavigationProvider
    extends NotifierProviderImpl<MainBottomNavigation, MainNavigationTab> {
  /// See also [MainBottomNavigation].
  MainBottomNavigationProvider(
    this.shell,
  ) : super.internal(
          () => MainBottomNavigation()..shell = shell,
          from: mainBottomNavigationProvider,
          name: r'mainBottomNavigationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mainBottomNavigationHash,
          dependencies: MainBottomNavigationFamily._dependencies,
          allTransitiveDependencies:
              MainBottomNavigationFamily._allTransitiveDependencies,
        );

  final StatefulNavigationShell shell;

  @override
  bool operator ==(Object other) {
    return other is MainBottomNavigationProvider && other.shell == shell;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shell.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  MainNavigationTab runNotifierBuild(
    covariant MainBottomNavigation notifier,
  ) {
    return notifier.build(
      shell,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
