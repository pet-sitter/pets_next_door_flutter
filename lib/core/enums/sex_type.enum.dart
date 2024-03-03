import 'package:freezed_annotation/freezed_annotation.dart';

enum SexType {
  @JsonValue('male')
  male(code: 'male', displayName: '수컷'),
  @JsonValue('female')
  female(code: 'female', displayName: '암컷');

  const SexType({required this.code, required this.displayName});

  final String code;
  final String displayName;

  factory SexType.getByCode(String code) {
    return SexType.values
        .firstWhere((value) => value.code == code, orElse: () => SexType.male);
  }
}
