// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) {
  return _UserDataDto.fromJson(json);
}

/// @nodoc
mixin _$UserDataDto {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbProviderType')
  String get firebaseProviderType => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get petIdList => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDtoCopyWith<UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDtoCopyWith<$Res> {
  factory $UserDataDtoCopyWith(
          UserDataDto value, $Res Function(UserDataDto) then) =
      _$UserDataDtoCopyWithImpl<$Res, UserDataDto>;
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'fbProviderType') String firebaseProviderType,
      String fullname,
      String nickname,
      List<String> petIdList,
      String? profileImageUrl});
}

/// @nodoc
class _$UserDataDtoCopyWithImpl<$Res, $Val extends UserDataDto>
    implements $UserDataDtoCopyWith<$Res> {
  _$UserDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firebaseProviderType = null,
    Object? fullname = null,
    Object? nickname = null,
    Object? petIdList = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      petIdList: null == petIdList
          ? _value.petIdList
          : petIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataDtoCopyWith<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  factory _$$_UserDataDtoCopyWith(
          _$_UserDataDto value, $Res Function(_$_UserDataDto) then) =
      __$$_UserDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'fbProviderType') String firebaseProviderType,
      String fullname,
      String nickname,
      List<String> petIdList,
      String? profileImageUrl});
}

/// @nodoc
class __$$_UserDataDtoCopyWithImpl<$Res>
    extends _$UserDataDtoCopyWithImpl<$Res, _$_UserDataDto>
    implements _$$_UserDataDtoCopyWith<$Res> {
  __$$_UserDataDtoCopyWithImpl(
      _$_UserDataDto _value, $Res Function(_$_UserDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firebaseProviderType = null,
    Object? fullname = null,
    Object? nickname = null,
    Object? petIdList = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_$_UserDataDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      petIdList: null == petIdList
          ? _value._petIdList
          : petIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataDto implements _UserDataDto {
  const _$_UserDataDto(
      {required this.id,
      required this.email,
      @JsonKey(name: 'fbProviderType') required this.firebaseProviderType,
      required this.fullname,
      required this.nickname,
      final List<String> petIdList = const [],
      this.profileImageUrl})
      : _petIdList = petIdList;

  factory _$_UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataDtoFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  @JsonKey(name: 'fbProviderType')
  final String firebaseProviderType;
  @override
  final String fullname;
  @override
  final String nickname;
  final List<String> _petIdList;
  @override
  @JsonKey()
  List<String> get petIdList {
    if (_petIdList is EqualUnmodifiableListView) return _petIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_petIdList);
  }

  @override
  final String? profileImageUrl;

  @override
  String toString() {
    return 'UserDataDto(id: $id, email: $email, firebaseProviderType: $firebaseProviderType, fullname: $fullname, nickname: $nickname, petIdList: $petIdList, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firebaseProviderType, firebaseProviderType) ||
                other.firebaseProviderType == firebaseProviderType) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality()
                .equals(other._petIdList, _petIdList) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firebaseProviderType,
      fullname,
      nickname,
      const DeepCollectionEquality().hash(_petIdList),
      profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      __$$_UserDataDtoCopyWithImpl<_$_UserDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataDtoToJson(
      this,
    );
  }
}

abstract class _UserDataDto implements UserDataDto {
  const factory _UserDataDto(
      {required final int id,
      required final String email,
      @JsonKey(name: 'fbProviderType')
      required final String firebaseProviderType,
      required final String fullname,
      required final String nickname,
      final List<String> petIdList,
      final String? profileImageUrl}) = _$_UserDataDto;

  factory _UserDataDto.fromJson(Map<String, dynamic> json) =
      _$_UserDataDto.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'fbProviderType')
  String get firebaseProviderType;
  @override
  String get fullname;
  @override
  String get nickname;
  @override
  List<String> get petIdList;
  @override
  String? get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
