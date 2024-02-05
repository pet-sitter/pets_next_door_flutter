import 'package:get_it/get_it.dart';
import 'package:pets_next_door_flutter/app/di/feature_di_interface.dart';
import 'package:pets_next_door_flutter/features/sos/data/remote/sos_post_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/sos/data/remote/sos_post_remote_data_source_impl.dart';
import 'package:pets_next_door_flutter/features/sos/repositories/sos_post_repository.dart';
import 'package:pets_next_door_flutter/features/sos/repositories/sos_post_repository_impl.dart';
import 'package:pets_next_door_flutter/features/sos/sos.dart';
import 'package:pets_next_door_flutter/features/sos/usecases/get_sos_post_use_case.dart';

final class SosPostDependencyInjection extends FeatureDependencyInjection {
  @override
  void dataSources() {
    GetIt.I.registerLazySingleton<SosPostRemoteDataSource>(
      SosPostRemoteDataSourceImpl.new,
    );
  }

  @override
  void repositories() {
    GetIt.I.registerLazySingleton<SosPostRepository>(
      () => SosPostRepositoryImpl(
        sosPostRemoteDataSource,
      ),
    );
  }

  @override
  void useCases() {
    GetIt.I
      ..registerFactory<GetSosPostsUseCase>(
        () => GetSosPostsUseCase(
          sosPostRepository: sosPostRepository,
        ),
      );
  }
}
