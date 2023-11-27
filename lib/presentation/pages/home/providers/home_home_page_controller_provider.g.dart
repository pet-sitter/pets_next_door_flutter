// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_home_page_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHomePageControllerHash() =>
    r'8e1a0b5ac67604a00a719a601045b208263f4f1e';

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

abstract class _$HomeHomePageController
    extends BuildlessAutoDisposeNotifier<TabController> {
  late final TickerProvider tickerProvider;

  TabController build(
    TickerProvider tickerProvider,
  );
}

/// See also [HomeHomePageController].
@ProviderFor(HomeHomePageController)
const homeHomePageControllerProvider = HomeHomePageControllerFamily();

/// See also [HomeHomePageController].
class HomeHomePageControllerFamily extends Family<TabController> {
  /// See also [HomeHomePageController].
  const HomeHomePageControllerFamily();

  /// See also [HomeHomePageController].
  HomeHomePageControllerProvider call(
    TickerProvider tickerProvider,
  ) {
    return HomeHomePageControllerProvider(
      tickerProvider,
    );
  }

  @override
  HomeHomePageControllerProvider getProviderOverride(
    covariant HomeHomePageControllerProvider provider,
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
  String? get name => r'homeHomePageControllerProvider';
}

/// See also [HomeHomePageController].
class HomeHomePageControllerProvider extends AutoDisposeNotifierProviderImpl<
    HomeHomePageController, TabController> {
  /// See also [HomeHomePageController].
  HomeHomePageControllerProvider(
    this.tickerProvider,
  ) : super.internal(
          () => HomeHomePageController()..tickerProvider = tickerProvider,
          from: homeHomePageControllerProvider,
          name: r'homeHomePageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeHomePageControllerHash,
          dependencies: HomeHomePageControllerFamily._dependencies,
          allTransitiveDependencies:
              HomeHomePageControllerFamily._allTransitiveDependencies,
        );

  final TickerProvider tickerProvider;

  @override
  bool operator ==(Object other) {
    return other is HomeHomePageControllerProvider &&
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
    covariant HomeHomePageController notifier,
  ) {
    return notifier.build(
      tickerProvider,
    );
  }
}

String _$currentHomeHomePageIndexHash() =>
    r'f7f28ba331b73dcc856ddb922e7d4f6f42d7eada';

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
