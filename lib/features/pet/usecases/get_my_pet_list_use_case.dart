import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/pet/entities/pet_data_entity.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';

final class GetMyPetListUseCase {
  const GetMyPetListUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  Future<Result<List<PetDataEntity>>> call() async {
    return _petRepository.getMyPetList();
  }
}
