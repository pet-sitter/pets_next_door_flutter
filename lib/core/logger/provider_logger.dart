import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  // 로깅할 Provider
  final observingProvider = [
    // 'currentTabTypeProvider',
    // 'petMateSearchFilterProvider',
    // 'petSosSearchFilterProvider',
  ];

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    super.didAddProvider(provider, value, container);

    if (observingProvider.contains(provider.name)) {
      debugPrint('Provider added ::: ${provider.name}');
    }
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    super.didDisposeProvider(provider, container);

    if (observingProvider.contains(provider.name)) {
      debugPrint('Provider disposed ::: ${provider.name}');
    }
  }

  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    super.didUpdateProvider(provider, previousValue, newValue, container);

    if (observingProvider.contains(provider.name)) {
      debugPrint(
          'Provider updated ::: ${provider.name} ::: ${previousValue.toString()} -> ${newValue.toString()}');
    }
  }
}
