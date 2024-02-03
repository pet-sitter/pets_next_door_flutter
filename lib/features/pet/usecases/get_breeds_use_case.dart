import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';

final class GetBreedsUseCase {
  const GetBreedsUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  Future<Result<List<Breed>>> call({
    required BreedsPaginationRequest breedsPaginationRequest,
  }) async {
    return _petRepository.getBreeds(breedsPaginationRequest: breedsPaginationRequest);
  }
}