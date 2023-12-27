import 'package:pets_next_door_flutter/core/services/local_storage_service.dart';
import 'package:pets_next_door_flutter/features/user/data/local/user_local_data_source.dart';

final class UserLocalDataSourceImpl implements UserLocalDataSource {
  final LocalStorageService _localStorage = LocalStorageService();

  @override
  String? getUserToken() {
    return _localStorage.getString('token');
  }

  @override
  Future<bool> updateUserToken({required String? token}) async {
    if (token == null) return _localStorage.remove('token');

    return _localStorage.setString('token', token);
  }
}
