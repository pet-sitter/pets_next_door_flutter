import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  /// 년도.월.일 형식의 String으로 반환
  String get formatyyMMdd {
    return DateFormat('yy.MM.dd').format(this);
  }
}
