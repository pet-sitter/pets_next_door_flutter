import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';

final class PetRepositoryImpl implements PetRepository {
  const PetRepositoryImpl({
    required PetRemoteDataSource petRemoteDataSource,
  }) : _petRemoteDataSource = petRemoteDataSource;

  final PetRemoteDataSource _petRemoteDataSource;

  @override
  Future<Result<List<Breed>>> getBreeds({required BreedsPaginationRequest breedsPaginationRequest}) async {
    try {
      final breedsData = await _petRemoteDataSource.getBreeds(breedsPaginationRequest: breedsPaginationRequest);
      return Result.success(breedsData.items);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}