import 'package:pets_next_door_flutter/features/user/data/models/user_data_model.dart';

abstract interface class UserRemoteDataSource {
  Future<UserDataModel> getUserData();
}
