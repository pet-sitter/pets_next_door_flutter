import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  /// 년도.월.일 형식의 String으로 반환
  String get formatyyMMdd {
    return DateFormat('yy.MM.dd').format(this);
  }

  int get ageFromNow {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - this.year;
    int month1 = currentDate.month;
    int month2 = this.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = this.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
}
