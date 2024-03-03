import 'package:pets_next_door_flutter/core/pagination/pagination_response.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';

/// Metadata used when fetching movies with the paginated search API.
class BreedsPaginationResponse extends PaginationResponse<Breed> {
  BreedsPaginationResponse({
    required super.page,
    required super.size,
    required super.items,
    required super.isLastPage,
  });

  BreedsPaginationResponse.fromJson(
    Map<String, dynamic> json,
  ) : super.fromJson(json, (e) => Breed.fromJson(e));
}
