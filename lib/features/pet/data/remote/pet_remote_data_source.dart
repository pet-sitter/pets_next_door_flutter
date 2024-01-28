import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_response.dart';

abstract interface class PetRemoteDataSource {
  Future<BreedsPaginationResponse> getBreeds({
    required BreedsPaginationRequest breedsPaginationRequest,
  });
}
