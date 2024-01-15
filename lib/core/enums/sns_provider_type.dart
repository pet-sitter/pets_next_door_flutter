import 'package:freezed_annotation/freezed_annotation.dart';

enum SnsProviderType {
  @JsonValue('kakao')
  kakao(providerId: 'kakao.com'),
  @JsonValue('google')
  google(providerId: 'google.com'),
  @JsonValue('apple')
  apple(providerId: 'apple.com');

  const SnsProviderType({required this.providerId});

  factory SnsProviderType.getByProviderId({required String providerId}) {
    return SnsProviderType.values
        .firstWhere((element) => element.providerId == providerId);
  }

  static List<SnsProviderType> getAndroidProviderList() {
    return SnsProviderType.values
        .where((element) => element != SnsProviderType.apple)
        .toList();
  }

  final String providerId;
}
