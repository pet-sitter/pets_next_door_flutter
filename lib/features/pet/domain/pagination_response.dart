import 'package:pets_next_door_flutter/core/constants/enums.dart';

/// Metadata used when fetching movies with the paginated search API.
class PaginationResponse<T> {
  PaginationResponse({
    required this.page,
    required this.size,
    required this.items,
  });

  PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJson,
  )   : page = json['page'] as int,
        size = json['size'] as int,
        items = (json['items'] as List<dynamic>)
            .map((e) => fromJson.call(e))
            .toList();

  final int page;
  final int size;
  final List<T> items;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaginationResponse &&
        other.items == items &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => items.hashCode ^ page.hashCode ^ size.hashCode;

  Map<String, dynamic> toJson() => {
        'page': page,
        'size': size,
      };
}
