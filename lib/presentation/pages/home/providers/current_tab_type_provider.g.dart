// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_tab_type_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentTabTypeHash() => r'50de61c865f33fe8fc381ef82efb1286b0821fe7';

/// 홈에서 현재 어떤 탭(돌봄급구/돌봄메이트)에 있는지
///
///
/// Copied from [CurrentTabType].
@ProviderFor(CurrentTabType)
final currentTabTypeProvider =
    NotifierProvider<CurrentTabType, HomeTabType>.internal(
  CurrentTabType.new,
  name: r'currentTabTypeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentTabTypeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentTabType = Notifier<HomeTabType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
