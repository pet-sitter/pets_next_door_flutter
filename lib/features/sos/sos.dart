import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/sos/data/remote/sos_post_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/sos/repositories/sos_post_repository.dart';
import 'package:pets_next_door_flutter/features/sos/usecases/get_sos_post_use_case.dart';

// export 'data/remote/pet_remote_data_source.dart';
// export 'repository/pet_repository.dart';
// export 'usecases/get_breeds_use_case.dart';

final sosPostRemoteDataSource = locator<SosPostRemoteDataSource>();
final sosPostRepository = locator<SosPostRepository>();
final getSosPostUseCase = locator<GetSosPostsUseCase>();
