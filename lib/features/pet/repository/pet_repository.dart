import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_response.dart';
import 'package:pets_next_door_flutter/features/pet/entities/pet_data_entity.dart';

abstract interface class PetRepository {
  Future<Result<BreedsPaginationResponse>> getBreeds({
    required BreedsPaginationRequest breedsPaginationRequest,
  });

  Future<Result<List<PetDataEntity>>> getMyPetList();
}
