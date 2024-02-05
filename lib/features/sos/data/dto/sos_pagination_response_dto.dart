import 'package:pets_next_door_flutter/core/pagination/pagination_response.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_post_dto.dart';

/// Metadata used when fetching movies with the paginated search API.
class SosPostPaginationResponseDto implements PaginationResponse<SosPostDto> {
  SosPostPaginationResponseDto({
    required this.page,
    required this.size,
    required this.items,
  });

  SosPostPaginationResponseDto.fromJson(
    Map<String, dynamic> json,
  )   : page = json['page'] as int,
        size = json['size'] as int,
        items = (json['items'] as List<dynamic>)
            .map((e) => SosPostDto.fromJson(e))
            .toList();

  @override
  final int page;

  @override
  final int size;

  @override
  final List<SosPostDto> items;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SosPostPaginationResponseDto &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => page.hashCode ^ size.hashCode;

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
