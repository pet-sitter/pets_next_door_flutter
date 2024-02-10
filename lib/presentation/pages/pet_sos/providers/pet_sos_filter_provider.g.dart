// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_sos_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petSosFilterHash() => r'a4470aedf29a6adf6204b7b1edc30029d467f2f1';

/// 돌봄급구 필터 프로바이더
///
/// Copied from [PetSosFilter].
@ProviderFor(PetSosFilter)
final petSosFilterProvider = AutoDisposeNotifierProvider<PetSosFilter,
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>.internal(
  PetSosFilter.new,
  name: r'petSosFilterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$petSosFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PetSosFilter = AutoDisposeNotifier<
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
