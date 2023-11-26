import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pagination_request.dart';

/// Metadata used when fetching movies with the paginated search API.
class BreedsPaginationRequest implements PaginationRequest {
  BreedsPaginationRequest({
    required this.page,
    required this.size,
    required this.petType,
  });
  @override
  final int page;

  @override
  final int size;

  final PetType petType;

  @override
  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'size': size,
      'pet_type': petType.code,
    };
  }
}
