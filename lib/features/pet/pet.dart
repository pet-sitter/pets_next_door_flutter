import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/pet/data/remote/pet_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/pet/repository/pet_repository.dart';
import 'package:pets_next_door_flutter/features/pet/usecases/get_breeds_use_case.dart';

// export 'data/remote/pet_remote_data_source.dart';
// export 'repository/pet_repository.dart';
// export 'usecases/get_breeds_use_case.dart';

final petRemoteDataSource = locator<PetRemoteDataSource>();
final petRepository = locator<PetRepository>();
final getBreedsUseCase = locator<GetBreedsUseCase>();
