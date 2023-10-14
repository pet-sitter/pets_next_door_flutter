import 'package:dio/dio.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/breeds_pagination_response.dart';

/// Uri builder class for the OpenWeatherMap API
class PNDPetAPI {
  PNDPetAPI(this._apiBaseUrl);
  final String _apiBaseUrl;

  static const String _apiPath = '/api/';

  Uri breeds({
    required int page,
    required int size,
    required String petType,
  }) =>
      _buildUri(
        endpoint: 'breeds',
        parametersBuilder: () => {
          'page': page,
          'size': size,
          'pet_type': petType,
        },
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

  Map<String, dynamic> breedsQueryParameters(
    BreedsPaginationResponse breedsPagination,
  ) =>
      {
        'page': breedsPagination.page,
        'size': breedsPagination.size,
        'pet_type': breedsPagination.petType.code,
      };
}
