/// Metadata used when fetching movies with the paginated search API.
class PaginationResponse<T> {
  PaginationResponse({
    required this.page,
    required this.size,
    required this.items,
    required this.isLastPage,
  });

  PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJson,
  )   : page = json['page'] as int,
        size = json['size'] as int,
        items = (json['items'] as List<dynamic>)
            .map((e) => fromJson.call(e))
            .toList(),
        isLastPage = json['is_last_page'] as bool;

  final int page;
  final int size;
  final List<T> items;
  final bool isLastPage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationResponse &&
          runtimeType == other.runtimeType &&
          page == other.page &&
          size == other.size &&
          items == other.items &&
          isLastPage == other.isLastPage;

  @override
  int get hashCode =>
      page.hashCode ^ size.hashCode ^ items.hashCode ^ isLastPage.hashCode;
}
