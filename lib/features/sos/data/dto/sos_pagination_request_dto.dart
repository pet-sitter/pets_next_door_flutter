import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/pagination/pagination_request.dart';

/// Metadata used when fetching movies with the paginated search API.
class SosPostPaginationRequestDto implements PaginationRequest {
  SosPostPaginationRequestDto({
    required this.page,
    required this.size,
    required this.sortType,
  });
  @override
  final int page;

  @override
  final int size;

  final SortTypeFilter sortType;

  @override
  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'size': size,
      'sort_by': sortType.code,
    };
  }
}
