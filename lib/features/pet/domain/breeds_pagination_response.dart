import 'package:pets_next_door_flutter/core/enums/pet_type.dart';
import 'package:pets_next_door_flutter/core/pagination/pagination_response.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';

/// Metadata used when fetching movies with the paginated search API.
class BreedsPaginationResponse implements PaginationResponse<Breed> {
  BreedsPaginationResponse({
    required this.page,
    required this.size,
    required this.items,
  });

  BreedsPaginationResponse.fromJson(
    Map<String, dynamic> json,
  )   : page = json['page'] as int,
        size = json['size'] as int,
        items = (json['items'] as List<dynamic>)
            .map((e) => Breed.fromJson(e))
            .toList();

  @override
  final int page;

  @override
  final int size;

  @override
  final List<Breed> items;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BreedsPaginationResponse &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => page.hashCode ^ size.hashCode;

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
