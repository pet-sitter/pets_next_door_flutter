import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_response.dart';
import 'package:pets_next_door_flutter/features/pet/entities/pet_data_entity.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';

final class PetRepositoryImpl implements PetRepository {
  const PetRepositoryImpl({
    required PetRemoteDataSource petRemoteDataSource,
  }) : _petRemoteDataSource = petRemoteDataSource;

  final PetRemoteDataSource _petRemoteDataSource;

  @override
  Future<Result<BreedsPaginationResponse>> getBreeds(
      {required BreedsPaginationRequest breedsPaginationRequest}) async {
    try {
      final breedsData = await _petRemoteDataSource.getBreeds(
          breedsPaginationRequest: breedsPaginationRequest);
      return Result.success(breedsData);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<List<PetDataEntity>>> getMyPetList() async {
    try {
      final petDtoList = await _petRemoteDataSource.getMyPets();

      final petEntities =
          petDtoList.map((dto) => PetDataEntity.fromDto(dto)).toList();

      return Result.success(petEntities);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
