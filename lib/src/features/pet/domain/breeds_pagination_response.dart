import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pagination_response.dart';

/// Metadata used when fetching movies with the paginated search API.
class BreedsPaginationResponse implements PaginationResponse<Breed> {
  BreedsPaginationResponse({
    required this.page,
    required this.size,
    required this.petType,
    required this.items,
  });
  @override
  final int page;

  @override
  final int size;

  @override
  final List<Breed> items;

  final PetType petType;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BreedsPaginationResponse &&
        other.petType == petType &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => petType.hashCode ^ page.hashCode ^ size.hashCode;

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
