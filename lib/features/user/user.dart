import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';
import 'package:pets_next_door_flutter/features/user/usecases/get_user_data_use_case.dart';

export 'data/remote/user_remote_data_source.dart';
export 'repositories/user_repository.dart';
export 'usecases/get_user_data_use_case.dart';

final userRemoteDataSource = locator<UserRemoteDataSource>();
final userRepository = locator<UserRepository>();
final getUserDataUseCase = locator<GetUserDataUseCase>();
