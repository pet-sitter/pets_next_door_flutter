import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/media/data/remote/media_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/media/repositories/media_repository.dart';
import 'package:pets_next_door_flutter/features/media/usecases/upload_image_use_case.dart';

export 'data/remote/media_remote_data_source.dart';
export 'repositories/media_repository.dart';
export 'usecases/upload_image_use_case.dart';

final mediaRemoteDataSource = locator<MediaRemoteDataSource>();
final mediaRepository = locator<MediaRepository>();
final uploadImageUseCase = locator<UploadImageUseCase>();
