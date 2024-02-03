// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_sos_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petSosSearchFilterHash() =>
    r'305100ac7caf152d47900e0507ef1ad35fadb8f9';

/// 돌봄급구 필터 프로바이더
///
/// Copied from [PetSosSearchFilter].
@ProviderFor(PetSosSearchFilter)
final petSosSearchFilterProvider = NotifierProvider<PetSosSearchFilter,
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>.internal(
  PetSosSearchFilter.new,
  name: r'petSosSearchFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petSosSearchFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PetSosSearchFilter
    = Notifier<({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
