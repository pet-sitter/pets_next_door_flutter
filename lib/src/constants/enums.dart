import 'package:freezed_annotation/freezed_annotation.dart';

enum SnsProviderType {
  kakao(providerId: 'kakao.com'),
  google(providerId: 'google.com'),
  apple(providerId: 'apple.com');

  const SnsProviderType({required this.providerId});

  factory SnsProviderType.getByProviderId({required String providerId}) {
    return SnsProviderType.values
        .firstWhere((element) => element.providerId == providerId);
  }

  final String providerId;
}

enum PetType {
  @JsonValue('cat')
  cat(displayName: '고양이', code: 'cat'),
  @JsonValue('dog')
  dog(displayName: '강아지', code: 'dog');

  const PetType({required this.displayName, required this.code});
  final String displayName;
  final String code;
}
