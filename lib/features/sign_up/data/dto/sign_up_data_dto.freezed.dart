// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpDataDto _$SignUpDataDtoFromJson(Map<String, dynamic> json) {
  return _SignUpDataDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpDataDto {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbProviderType')
  String get firebaseProviderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbUid')
  String get firebaseUid => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get profileImageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpDataDtoCopyWith<SignUpDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataDtoCopyWith<$Res> {
  factory $SignUpDataDtoCopyWith(
          SignUpDataDto value, $Res Function(SignUpDataDto) then) =
      _$SignUpDataDtoCopyWithImpl<$Res, SignUpDataDto>;
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'fbProviderType') String firebaseProviderType,
      @JsonKey(name: 'fbUid') String firebaseUid,
      String fullname,
      String nickname,
      int profileImageId});
}

/// @nodoc
class _$SignUpDataDtoCopyWithImpl<$Res, $Val extends SignUpDataDto>
    implements $SignUpDataDtoCopyWith<$Res> {
  _$SignUpDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firebaseProviderType = null,
    Object? firebaseUid = null,
    Object? fullname = null,
    Object? nickname = null,
    Object? profileImageId = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageId: null == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpDataDtoCopyWith<$Res>
    implements $SignUpDataDtoCopyWith<$Res> {
  factory _$$_SignUpDataDtoCopyWith(
          _$_SignUpDataDto value, $Res Function(_$_SignUpDataDto) then) =
      __$$_SignUpDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'fbProviderType') String firebaseProviderType,
      @JsonKey(name: 'fbUid') String firebaseUid,
      String fullname,
      String nickname,
      int profileImageId});
}

/// @nodoc
class __$$_SignUpDataDtoCopyWithImpl<$Res>
    extends _$SignUpDataDtoCopyWithImpl<$Res, _$_SignUpDataDto>
    implements _$$_SignUpDataDtoCopyWith<$Res> {
  __$$_SignUpDataDtoCopyWithImpl(
      _$_SignUpDataDto _value, $Res Function(_$_SignUpDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firebaseProviderType = null,
    Object? firebaseUid = null,
    Object? fullname = null,
    Object? nickname = null,
    Object? profileImageId = null,
  }) {
    return _then(_$_SignUpDataDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageId: null == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpDataDto implements _SignUpDataDto {
  const _$_SignUpDataDto(
      {required this.email,
      @JsonKey(name: 'fbProviderType') required this.firebaseProviderType,
      @JsonKey(name: 'fbUid') required this.firebaseUid,
      required this.fullname,
      required this.nickname,
      required this.profileImageId});

  factory _$_SignUpDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpDataDtoFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'fbProviderType')
  final String firebaseProviderType;
  @override
  @JsonKey(name: 'fbUid')
  final String firebaseUid;
  @override
  final String fullname;
  @override
  final String nickname;
  @override
  final int profileImageId;

  @override
  String toString() {
    return 'SignUpDataDto(email: $email, firebaseProviderType: $firebaseProviderType, firebaseUid: $firebaseUid, fullname: $fullname, nickname: $nickname, profileImageId: $profileImageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpDataDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firebaseProviderType, firebaseProviderType) ||
                other.firebaseProviderType == firebaseProviderType) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageId, profileImageId) ||
                other.profileImageId == profileImageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, firebaseProviderType,
      firebaseUid, fullname, nickname, profileImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpDataDtoCopyWith<_$_SignUpDataDto> get copyWith =>
      __$$_SignUpDataDtoCopyWithImpl<_$_SignUpDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpDataDtoToJson(
      this,
    );
  }
}

abstract class _SignUpDataDto implements SignUpDataDto {
  const factory _SignUpDataDto(
      {required final String email,
      @JsonKey(name: 'fbProviderType')
      required final String firebaseProviderType,
      @JsonKey(name: 'fbUid') required final String firebaseUid,
      required final String fullname,
      required final String nickname,
      required final int profileImageId}) = _$_SignUpDataDto;

  factory _SignUpDataDto.fromJson(Map<String, dynamic> json) =
      _$_SignUpDataDto.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'fbProviderType')
  String get firebaseProviderType;
  @override
  @JsonKey(name: 'fbUid')
  String get firebaseUid;
  @override
  String get fullname;
  @override
  String get nickname;
  @override
  int get profileImageId;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpDataDtoCopyWith<_$_SignUpDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
