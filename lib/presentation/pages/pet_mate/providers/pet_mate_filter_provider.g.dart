// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_mate_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petMateFilterHash() => r'f972067a8cbe4261995af6d3646cb71ba4fb1c28';

/// 돌봄메이트 필터 프로바이더
///
/// Copied from [PetMateFilter].
@ProviderFor(PetMateFilter)
final petMateFilterProvider = AutoDisposeNotifierProvider<PetMateFilter,
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>.internal(
  PetMateFilter.new,
  name: r'petMateFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petMateFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PetMateFilter = AutoDisposeNotifier<
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
