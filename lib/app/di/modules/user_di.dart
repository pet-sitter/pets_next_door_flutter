import 'package:get_it/get_it.dart';
import 'package:pets_next_door_flutter/app/di/feature_di_interface.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source_impl.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository_impl.dart';
import 'package:pets_next_door_flutter/features/user/usecases/create_user_data_use_case.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';

final class UserDependencyInjection extends FeatureDependencyInjection {
  @override
  Future<void> dataSources() async {
    GetIt.I.registerLazySingleton<UserRemoteDataSource>(
      UserRemoteDataSourceImpl.new,
    );
  }

  @override
  void repositories() {
    GetIt.I.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(
        userRemoteDataSource,
      ),
    );
  }

  @override
  void useCases() {
    GetIt.I
      ..registerFactory<CreateUserDataUseCase>(
        () => CreateUserDataUseCase(
          userRepository,
        ),
      )
      ..registerFactory<GetUserDataUseCase>(
        () => GetUserDataUseCase(userRepository),
      );
  }
}
