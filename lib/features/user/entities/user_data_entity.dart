import 'package:flutter/foundation.dart';
import 'package:pets_next_door_flutter/features/user/data/dto/user_data_dto.dart';

/// 앱단에서 사용하는 유저 데이터 모델
@immutable
class UserDataEntity {
  const UserDataEntity({
    required this.uid,
    required this.email,
    required this.nickname,
    List<String>? petIdList,
  }) : petIdList = petIdList ?? const [];

  final int uid;
  final String email;
  final String nickname;
  final List<String> petIdList;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDataEntity &&
          runtimeType == other.runtimeType &&
          uid == other.uid &&
          nickname == other.nickname &&
          petIdList == other.petIdList);

  @override
  int get hashCode => uid.hashCode ^ nickname.hashCode ^ petIdList.hashCode;

  UserDataEntity copyWith({
    int? uid,
    String? firebaseUid,
    String? email,
    String? nickname,
    List<String>? petIdList,
  }) {
    return UserDataEntity(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      nickname: nickname ?? this.nickname,
      petIdList: petIdList ?? this.petIdList,
    );
  }

  factory UserDataEntity.fromDto(UserDataDto model) => UserDataEntity(
        uid: model.id,

        email: model.email,
        nickname: model.nickname,
        // TODO: 아직 서버에서 pet 리스트 부분 추가되지 않았음
        petIdList: model.petIdList,
      );
}
