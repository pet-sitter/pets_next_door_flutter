import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/api/auth_api.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/auth/data/api_exceptions.dart';

/// Weather Repository using the http client. Calls API methods and parses responses.
class DioAuthRepository {
  DioAuthRepository({required this.api, required this.client});
  final PNDAuthAPI api;
  final Dio client;

  Future<bool> sendPhoneAuthCode({required String phoneNum}) => _getData(
        uri: api.authCode(phoneNum),
        builder: (data) => true,
      );

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get<T>(
        uri.path,
        queryParameters: uri.queryParameters,
      );
      switch (response.statusCode) {
        case 200:
          final data = response.data;
          return builder(data);
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw CityNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}

/// Providers used by rest of the app
final phoneAuthRepositoryProvider = Provider<DioAuthRepository>((ref) {
  /// Use the API key passed via --dart-define,
  /// or fallback to the one defined in api_keys.dart
  // set key to const
  const apiKey = String.fromEnvironment(
    'API_KEY',
  );
  return DioAuthRepository(
    api: PNDAuthAPI(apiKey),
    client: AppDio.instance,
  );
});
