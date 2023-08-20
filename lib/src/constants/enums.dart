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
