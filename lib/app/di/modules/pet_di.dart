import 'package:get_it/get_it.dart';
import 'package:pets_next_door_flutter/app/di/feature_di_interface.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source_impl.dart';
import 'package:pets_next_door_flutter/features/pet/pet.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository_impl.dart';
import 'package:pets_next_door_flutter/features/pet/usecases/get_breeds_use_case.dart';
import 'package:pets_next_door_flutter/features/pet/usecases/get_my_pet_list_use_case.dart';

final class PetDependencyInjection extends FeatureDependencyInjection {
  @override
  void dataSources() {
    GetIt.I.registerLazySingleton<PetRemoteDataSource>(
      PetRemoteDataSourceImpl.new,
    );
  }

  @override
  void repositories() {
    GetIt.I.registerLazySingleton<PetRepository>(
      () => PetRepositoryImpl(
        petRemoteDataSource: petRemoteDataSource,
      ),
    );
  }

  @override
  void useCases() {
    GetIt.I
      ..registerFactory<GetBreedsUseCase>(
        () => GetBreedsUseCase(
          petRepository: petRepository,
        ),
      )
      ..registerFactory<GetMyPetListUseCase>(
        () => GetMyPetListUseCase(
          petRepository: petRepository,
        ),
      );
  }
}
