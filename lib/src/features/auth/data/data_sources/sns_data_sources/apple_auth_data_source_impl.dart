import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/features/auth/data/data_sources/sns_data_sources/sns_auth_data_source.dart';

final appleAuthServiceProvider =
    Provider.autoDispose<SnsAuthDataSource>((ref) => AppleAuthDataSourceImpl());

class AppleAuthDataSourceImpl implements SnsAuthDataSource {
  @override
  snsLogin() {
    // TODO: implement snsLogin
    throw UnimplementedError();
  }

  @override
  Future<Valid> validateLoginStatus() {
    // TODO: implement validateLoginStatus
    throw UnimplementedError();
  }
}
