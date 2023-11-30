// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_home_tab_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHomeTabControllerHash() =>
    r'1abe1adb20635b7b484b980084c023c5ef713583';

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

abstract class _$HomeHomeTabController
    extends BuildlessAutoDisposeNotifier<TabController> {
  late final TickerProvider tickerProvider;
  late final int tabLength;

  TabController build(
    TickerProvider tickerProvider,
    int tabLength,
  );
}

/// See also [HomeHomeTabController].
@ProviderFor(HomeHomeTabController)
const homeHomeTabControllerProvider = HomeHomeTabControllerFamily();

/// See also [HomeHomeTabController].
class HomeHomeTabControllerFamily extends Family<TabController> {
  /// See also [HomeHomeTabController].
  const HomeHomeTabControllerFamily();

  /// See also [HomeHomeTabController].
  HomeHomeTabControllerProvider call(
    TickerProvider tickerProvider,
    int tabLength,
  ) {
    return HomeHomeTabControllerProvider(
      tickerProvider,
      tabLength,
    );
  }

  @override
  HomeHomeTabControllerProvider getProviderOverride(
    covariant HomeHomeTabControllerProvider provider,
  ) {
    return call(
      provider.tickerProvider,
      provider.tabLength,
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
  String? get name => r'homeHomeTabControllerProvider';
}

/// See also [HomeHomeTabController].
class HomeHomeTabControllerProvider extends AutoDisposeNotifierProviderImpl<
    HomeHomeTabController, TabController> {
  /// See also [HomeHomeTabController].
  HomeHomeTabControllerProvider(
    this.tickerProvider,
    this.tabLength,
  ) : super.internal(
          () => HomeHomeTabController()
            ..tickerProvider = tickerProvider
            ..tabLength = tabLength,
          from: homeHomeTabControllerProvider,
          name: r'homeHomeTabControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeHomeTabControllerHash,
          dependencies: HomeHomeTabControllerFamily._dependencies,
          allTransitiveDependencies:
              HomeHomeTabControllerFamily._allTransitiveDependencies,
        );

  final TickerProvider tickerProvider;
  final int tabLength;

  @override
  bool operator ==(Object other) {
    return other is HomeHomeTabControllerProvider &&
        other.tickerProvider == tickerProvider &&
        other.tabLength == tabLength;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tickerProvider.hashCode);
    hash = _SystemHash.combine(hash, tabLength.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  TabController runNotifierBuild(
    covariant HomeHomeTabController notifier,
  ) {
    return notifier.build(
      tickerProvider,
      tabLength,
    );
  }
}

String _$currentHomeHomePageIndexHash() =>
    r'4a4888bc9025ea8438732e940b5ff0186348c351';

/// See also [CurrentHomeHomePageIndex].
@ProviderFor(CurrentHomeHomePageIndex)
final currentHomeHomePageIndexProvider =
    AutoDisposeNotifierProvider<CurrentHomeHomePageIndex, int>.internal(
  CurrentHomeHomePageIndex.new,
  name: r'currentHomeHomePageIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentHomeHomePageIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentHomeHomePageIndex = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
