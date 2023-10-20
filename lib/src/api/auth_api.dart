import 'package:dio/dio.dart';

/// Uri builder class for the OpenWeatherMap API
class PNDAuthAPI {
  PNDAuthAPI(this._apiBaseUrl);
  final String _apiBaseUrl;

  static const String _apiPath = '/auth/';

  Uri authCode(String phoneNum) => _buildUri(
        endpoint: 'weather',
        parametersBuilder: () => authCodeQueryParameters(phoneNum),
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

  Map<String, dynamic> authCodeQueryParameters(String phoneNum) => {};
}
