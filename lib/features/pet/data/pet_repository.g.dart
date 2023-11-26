// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchBreedsHash() => r'e664943da1c7c5b15777c20af38ad6684370d2a5';

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

typedef FetchBreedsRef = AutoDisposeFutureProviderRef<List<Breed>>;

/// Provider to fetch paginated movies data
///
/// Copied from [fetchBreeds].
@ProviderFor(fetchBreeds)
const fetchBreedsProvider = FetchBreedsFamily();

/// Provider to fetch paginated movies data
///
/// Copied from [fetchBreeds].
class FetchBreedsFamily extends Family<AsyncValue<List<Breed>>> {
  /// Provider to fetch paginated movies data
  ///
  /// Copied from [fetchBreeds].
  const FetchBreedsFamily();

  /// Provider to fetch paginated movies data
  ///
  /// Copied from [fetchBreeds].
  FetchBreedsProvider call({
    required BreedsPaginationRequest paginationRequest,
  }) {
    return FetchBreedsProvider(
      paginationRequest: paginationRequest,
    );
  }

  @override
  FetchBreedsProvider getProviderOverride(
    covariant FetchBreedsProvider provider,
  ) {
    return call(
      paginationRequest: provider.paginationRequest,
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
  String? get name => r'fetchBreedsProvider';
}

/// Provider to fetch paginated movies data
///
/// Copied from [fetchBreeds].
class FetchBreedsProvider extends AutoDisposeFutureProvider<List<Breed>> {
  /// Provider to fetch paginated movies data
  ///
  /// Copied from [fetchBreeds].
  FetchBreedsProvider({
    required this.paginationRequest,
  }) : super.internal(
          (ref) => fetchBreeds(
            ref,
            paginationRequest: paginationRequest,
          ),
          from: fetchBreedsProvider,
          name: r'fetchBreedsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchBreedsHash,
          dependencies: FetchBreedsFamily._dependencies,
          allTransitiveDependencies:
              FetchBreedsFamily._allTransitiveDependencies,
        );

  final BreedsPaginationRequest paginationRequest;

  @override
  bool operator ==(Object other) {
    return other is FetchBreedsProvider &&
        other.paginationRequest == paginationRequest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, paginationRequest.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
