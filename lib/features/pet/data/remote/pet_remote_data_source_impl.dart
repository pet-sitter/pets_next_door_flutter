import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/pet/api/pet_api.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_response.dart';

final class PetRemoteDataSourceImpl implements PetRemoteDataSource {
  final PetAPI _petAPI = PetAPI(
    AppDio.instance,
    baseUrl: Flavor.apiUrl,
  );

  @override
  Future<BreedsPaginationResponse> getBreeds({
    required BreedsPaginationRequest breedsPaginationRequest,
  }) {
    return _petAPI.getBreed(breedsPaginationRequest);
  }
}
