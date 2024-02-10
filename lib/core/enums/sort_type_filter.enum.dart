import 'package:freezed_annotation/freezed_annotation.dart';

enum SortTypeFilter {
  @JsonValue('newest')
  newest(displayName: '최신순', code: 'newest'),
  @JsonValue('deadline')
  deadline(displayName: '마감일순', code: 'deadline'),

  @JsonValue('nearest')
  nearest(displayName: '가까운순', code: 'nearest');

  const SortTypeFilter({required this.displayName, required this.code});
  final String displayName;
  final String code;
}
