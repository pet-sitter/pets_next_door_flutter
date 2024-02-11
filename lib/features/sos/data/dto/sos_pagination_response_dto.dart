import 'package:pets_next_door_flutter/core/pagination/pagination_response.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_post_dto.dart';

/// Metadata used when fetching movies with the paginated search API.
class SosPostPaginationResponseDto extends PaginationResponse<SosPostDto> {
  SosPostPaginationResponseDto({
    required super.page,
    required super.size,
    required super.items,
    required super.isLastPage,
  });

  SosPostPaginationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) : super.fromJson(json, (e) => SosPostDto.fromJson(e));
}
