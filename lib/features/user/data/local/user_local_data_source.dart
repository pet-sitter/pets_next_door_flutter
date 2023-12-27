abstract interface class UserLocalDataSource {
  String? getUserToken();
  Future<bool> updateUserToken({required String? token});
}
