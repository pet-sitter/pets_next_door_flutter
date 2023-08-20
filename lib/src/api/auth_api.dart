/// Uri builder class for the OpenWeatherMap API
class AuthAPI {
  AuthAPI(this._apiBaseUrl);
  final String _apiBaseUrl;

  static const String _apiPath = '/auth/';

  Uri weather(String city) => _buildUri(
        endpoint: 'weather',
        parametersBuilder: () => cityQueryParameters(city),
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: 'https',
      host: _apiBaseUrl,
      path: '$_apiPath$endpoint',
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> cityQueryParameters(String city) => {
        'q': city,
        'units': 'metric',
      };
}
