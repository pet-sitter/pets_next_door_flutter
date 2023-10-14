/// Metadata used when fetching movies with the paginated search API.
class PaginationRequest {
  PaginationRequest({
    required this.page,
    required this.size,
  });

  final int page;
  final int size;

  Map<String, dynamic> toJson() => {
        'page': page,
        'size': size,
      };
}
