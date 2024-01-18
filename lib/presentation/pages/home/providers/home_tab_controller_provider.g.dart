// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_tab_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeTabControllerHash() => r'17a4d2fadf94570cd4a82bd1f1fafed22236efa7';

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

abstract class _$HomeTabController
    extends BuildlessAutoDisposeNotifier<TabController> {
  late final TickerProvider tickerProvider;

  TabController build(
    TickerProvider tickerProvider,
  );
}

/// See also [HomeTabController].
@ProviderFor(HomeTabController)
const homeTabControllerProvider = HomeTabControllerFamily();

/// See also [HomeTabController].
class HomeTabControllerFamily extends Family<TabController> {
  /// See also [HomeTabController].
  const HomeTabControllerFamily();

  /// See also [HomeTabController].
  HomeTabControllerProvider call(
    TickerProvider tickerProvider,
  ) {
    return HomeTabControllerProvider(
      tickerProvider,
    );
  }

  @override
  HomeTabControllerProvider getProviderOverride(
    covariant HomeTabControllerProvider provider,
  ) {
    return call(
      provider.tickerProvider,
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
  String? get name => r'homeTabControllerProvider';
}

/// See also [HomeTabController].
class HomeTabControllerProvider
    extends AutoDisposeNotifierProviderImpl<HomeTabController, TabController> {
  /// See also [HomeTabController].
  HomeTabControllerProvider(
    this.tickerProvider,
  ) : super.internal(
          () => HomeTabController()..tickerProvider = tickerProvider,
          from: homeTabControllerProvider,
          name: r'homeTabControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeTabControllerHash,
          dependencies: HomeTabControllerFamily._dependencies,
          allTransitiveDependencies:
              HomeTabControllerFamily._allTransitiveDependencies,
        );

  final TickerProvider tickerProvider;

  @override
  bool operator ==(Object other) {
    return other is HomeTabControllerProvider &&
        other.tickerProvider == tickerProvider;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tickerProvider.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  TabController runNotifierBuild(
    covariant HomeTabController notifier,
  ) {
    return notifier.build(
      tickerProvider,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
