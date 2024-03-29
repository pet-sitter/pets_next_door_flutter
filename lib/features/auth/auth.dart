import 'package:pets_next_door_flutter/app/di/locator.dart';
import 'package:pets_next_door_flutter/features/auth/data/remote/auth_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository.dart';
import 'package:pets_next_door_flutter/features/auth/usecases/sign_in_oauth_use_case.dart';
import 'package:pets_next_door_flutter/features/auth/usecases/sign_out_use_case.dart';

export 'data/remote/auth_remote_data_source.dart';
export 'repositories/auth_repository.dart';
export 'usecases/sign_in_oauth_use_case.dart';
export 'usecases/sign_out_use_case.dart';

final authRemoteDataSource = locator<AuthRemoteDataSource>();
final authRepository = locator<AuthRepository>();
final signInOAuthUseCase = locator<SignInOAuthUseCase>();
final signOutUseCase = locator<SignOutUseCase>();
