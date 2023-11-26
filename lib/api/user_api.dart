import 'package:pets_next_door_flutter/features/sign_up/domain/profile_form.dart';

/// Uri builder class for the UserAPI
class UserAPI {
  UserAPI(this._apiBaseUrl);
  final String _apiBaseUrl;

  static const String _apiPath = '/user/';

  Uri register(ProfileForm registrationInfo) =>
      _buildUri(endpoint: 'register', parametersBuilder: () => {});

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

  // Map<String, dynamic> registerationQueryParameters(
  //   RegistrationInfo registerationInfo,
  // ) =>
  //     {
  //       'email': registerationInfo.userInfo.email,
  //       'fbProviderType': registerationInfo.userInfo.providerType.name,
  //       'fbUid': registerationInfo.firebaseUid,
  //       'fullname': registerationInfo.fullname,
  //       'nickname': registerationInfo.nickname,
  //     };
}
