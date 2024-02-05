// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_post_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sosPostFilterHash() => r'dfb7d515a3edeebb55d0b9a20b3d0326e6b28efa';

/// 돌봄급구 필터 프로바이더
///
/// Copied from [SosPostFilter].
@ProviderFor(SosPostFilter)
final sosPostFilterProvider = AutoDisposeNotifierProvider<SosPostFilter,
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>.internal(
  SosPostFilter.new,
  name: r'sosPostFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sosPostFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SosPostFilter = AutoDisposeNotifier<
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
