enum SnsProviderType {
  kakao(providerId: 'kakao.com'),
  google(providerId: 'google.com'),
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
