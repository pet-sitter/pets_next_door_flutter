import 'package:pets_next_door_flutter/app/di/feature_di_interface.dart';
import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/auth/auth.dart';
import 'package:pets_next_door_flutter/features/auth/data/remote/auth_remote_data_source_impl.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository_impl.dart';

final class AuthDependencyInjection extends FeatureDependencyInjection {
  @override
  void dataSources() {
    locator.registerLazySingleton<AuthRemoteDataSource>(
      AuthRemoteDataSourceImpl.new,
    );
  }

  @override
  void repositories() {
    locator.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource,
      ),
    );
  }

  @override
  void useCases() {
    locator
      ..registerFactory(
        () => SignInOAuthUseCase(
          authRepository,
        ),
      )
      ..registerFactory(
        () => SignOutUseCase(
          authRepository,
        ),
      );
  }
}
