import 'package:get_it/get_it.dart';
import 'package:pets_next_door_flutter/app/di/feature_di_interface.dart';
import 'package:pets_next_door_flutter/features/media/data/remote/media_remote_data_source_impl.dart';
import 'package:pets_next_door_flutter/features/media/media.dart';
import 'package:pets_next_door_flutter/features/media/repositories/media_repository_impl.dart';

final class MediaDependencyInjection extends FeatureDependencyInjection {
  @override
  Future<void> dataSources() async {
    GetIt.I.registerLazySingleton<MediaRemoteDataSource>(
      MediaRemoteDataSourceImpl.new,
    );
  }

  @override
  void repositories() {
    GetIt.I.registerLazySingleton<MediaRepository>(
      () => MediaRepositoryImpl(
        mediaRemoteDataSource,
      ),
    );
  }

  @override
  void useCases() {
    GetIt.I
      ..registerFactory<UploadImageUseCase>(
        () => UploadImageUseCase(
          mediaRepository,
        ),
      );
  }
}
