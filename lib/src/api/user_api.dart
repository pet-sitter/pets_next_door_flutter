import 'package:pets_next_door_flutter/src/features/authentication/domain/registration_info.dart';

/// Uri builder class for the UserAPI
class UserAPI {
  UserAPI(this._apiBaseUrl);
  final String _apiBaseUrl;

  static const String _apiPath = '/user/';

  Uri register(RegistrationInfo registrationInfo) => _buildUri(
        endpoint: 'register',
        parametersBuilder: () => registerationQueryParameters(registrationInfo),
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

  Map<String, dynamic> registerationQueryParameters(
    RegistrationInfo registerationInfo,
  ) =>
      {
        'email': registerationInfo.email,
        'fbProviderType': registerationInfo.providerType.name,
        'fbUid': registerationInfo.firebaseUid,
        'fullname': registerationInfo.fullname,
        'nickname': registerationInfo.nickname,
      };
}
