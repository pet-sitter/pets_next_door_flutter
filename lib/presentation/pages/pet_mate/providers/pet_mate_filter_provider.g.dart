// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_mate_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petMateSearchFilterHash() =>
    r'949eecf8cfeb82a82538c2bbb96235aa22ef5991';

/// 돌봄메이트 필터 프로바이더
///
/// Copied from [PetMateSearchFilter].
@ProviderFor(PetMateSearchFilter)
final petMateSearchFilterProvider = NotifierProvider<PetMateSearchFilter,
    ({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>.internal(
  PetMateSearchFilter.new,
  name: r'petMateSearchFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petMateSearchFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PetMateSearchFilter
    = Notifier<({PetTypeFilter petTypeFilter, SortTypeFilter sortFilter})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
