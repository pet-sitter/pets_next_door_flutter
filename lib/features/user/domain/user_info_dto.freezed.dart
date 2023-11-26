// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UserInfoDto.fromJson(json);
}

/// @nodoc
mixin _$UserInfoDto {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbProviderType')
  SnsProviderType get providerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbUid')
  String get firebaseUid => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  int? get profileImageId => throw _privateConstructorUsedError;
  List<Pet>? get pets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDtoCopyWith<UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDtoCopyWith<$Res> {
  factory $UserInfoDtoCopyWith(
          UserInfoDto value, $Res Function(UserInfoDto) then) =
      _$UserInfoDtoCopyWithImpl<$Res, UserInfoDto>;
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'fbProviderType') SnsProviderType providerType,
      @JsonKey(name: 'fbUid') String firebaseUid,
      String? fullname,
      String? nickname,
      int? profileImageId,
      List<Pet>? pets});
}

/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res, $Val extends UserInfoDto>
    implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? providerType = null,
    Object? firebaseUid = null,
    Object? fullname = freezed,
    Object? nickname = freezed,
    Object? profileImageId = freezed,
    Object? pets = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerType: null == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageId: freezed == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int?,
      pets: freezed == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoDtoCopyWith<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  factory _$$_UserInfoDtoCopyWith(
          _$_UserInfoDto value, $Res Function(_$_UserInfoDto) then) =
      __$$_UserInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'fbProviderType') SnsProviderType providerType,
      @JsonKey(name: 'fbUid') String firebaseUid,
      String? fullname,
      String? nickname,
      int? profileImageId,
      List<Pet>? pets});
}

/// @nodoc
class __$$_UserInfoDtoCopyWithImpl<$Res>
    extends _$UserInfoDtoCopyWithImpl<$Res, _$_UserInfoDto>
    implements _$$_UserInfoDtoCopyWith<$Res> {
  __$$_UserInfoDtoCopyWithImpl(
      _$_UserInfoDto _value, $Res Function(_$_UserInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? providerType = null,
    Object? firebaseUid = null,
    Object? fullname = freezed,
    Object? nickname = freezed,
    Object? profileImageId = freezed,
    Object? pets = freezed,
  }) {
    return _then(_$_UserInfoDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerType: null == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageId: freezed == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int?,
      pets: freezed == pets
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoDto extends _UserInfoDto {
  _$_UserInfoDto(
      {required this.email,
      @JsonKey(name: 'fbProviderType') required this.providerType,
      @JsonKey(name: 'fbUid') required this.firebaseUid,
      this.fullname,
      this.nickname,
      this.profileImageId,
      final List<Pet>? pets})
      : _pets = pets,
        super._();

  factory _$_UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDtoFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'fbProviderType')
  final SnsProviderType providerType;
  @override
  @JsonKey(name: 'fbUid')
  final String firebaseUid;
  @override
  final String? fullname;
  @override
  final String? nickname;
  @override
  final int? profileImageId;
  final List<Pet>? _pets;
  @override
  List<Pet>? get pets {
    final value = _pets;
    if (value == null) return null;
    if (_pets is EqualUnmodifiableListView) return _pets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserInfoDto(email: $email, providerType: $providerType, firebaseUid: $firebaseUid, fullname: $fullname, nickname: $nickname, profileImageId: $profileImageId, pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providerType, providerType) ||
                other.providerType == providerType) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageId, profileImageId) ||
                other.profileImageId == profileImageId) &&
            const DeepCollectionEquality().equals(other._pets, _pets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      providerType,
      firebaseUid,
      fullname,
      nickname,
      profileImageId,
      const DeepCollectionEquality().hash(_pets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoDtoCopyWith<_$_UserInfoDto> get copyWith =>
      __$$_UserInfoDtoCopyWithImpl<_$_UserInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoDtoToJson(
      this,
    );
  }
}

abstract class _UserInfoDto extends UserInfoDto {
  factory _UserInfoDto(
      {required final String email,
      @JsonKey(name: 'fbProviderType')
      required final SnsProviderType providerType,
      @JsonKey(name: 'fbUid') required final String firebaseUid,
      final String? fullname,
      final String? nickname,
      final int? profileImageId,
      final List<Pet>? pets}) = _$_UserInfoDto;
  _UserInfoDto._() : super._();

  factory _UserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDto.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'fbProviderType')
  SnsProviderType get providerType;
  @override
  @JsonKey(name: 'fbUid')
  String get firebaseUid;
  @override
  String? get fullname;
  @override
  String? get nickname;
  @override
  int? get profileImageId;
  @override
  List<Pet>? get pets;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoDtoCopyWith<_$_UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
