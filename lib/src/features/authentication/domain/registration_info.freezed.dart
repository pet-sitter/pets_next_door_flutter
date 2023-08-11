// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationInfo _$RegistrationInfoFromJson(Map<String, dynamic> json) {
  return _RegistrationInfo.fromJson(json);
}

/// @nodoc
mixin _$RegistrationInfo {
  String get email => throw _privateConstructorUsedError;
  SnsProviderType get providerType => throw _privateConstructorUsedError;
  String get firebaseUid => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationInfoCopyWith<RegistrationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationInfoCopyWith<$Res> {
  factory $RegistrationInfoCopyWith(
          RegistrationInfo value, $Res Function(RegistrationInfo) then) =
      _$RegistrationInfoCopyWithImpl<$Res, RegistrationInfo>;
  @useResult
  $Res call(
      {String email,
      SnsProviderType providerType,
      String firebaseUid,
      String fullname,
      String nickname});
}

/// @nodoc
class _$RegistrationInfoCopyWithImpl<$Res, $Val extends RegistrationInfo>
    implements $RegistrationInfoCopyWith<$Res> {
  _$RegistrationInfoCopyWithImpl(this._value, this._then);

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
    Object? fullname = null,
    Object? nickname = null,
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
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationInfoCopyWith<$Res>
    implements $RegistrationInfoCopyWith<$Res> {
  factory _$$_RegistrationInfoCopyWith(
          _$_RegistrationInfo value, $Res Function(_$_RegistrationInfo) then) =
      __$$_RegistrationInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      SnsProviderType providerType,
      String firebaseUid,
      String fullname,
      String nickname});
}

/// @nodoc
class __$$_RegistrationInfoCopyWithImpl<$Res>
    extends _$RegistrationInfoCopyWithImpl<$Res, _$_RegistrationInfo>
    implements _$$_RegistrationInfoCopyWith<$Res> {
  __$$_RegistrationInfoCopyWithImpl(
      _$_RegistrationInfo _value, $Res Function(_$_RegistrationInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? providerType = null,
    Object? firebaseUid = null,
    Object? fullname = null,
    Object? nickname = null,
  }) {
    return _then(_$_RegistrationInfo(
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
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationInfo implements _RegistrationInfo {
  _$_RegistrationInfo(
      {required this.email,
      required this.providerType,
      required this.firebaseUid,
      required this.fullname,
      required this.nickname});

  factory _$_RegistrationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationInfoFromJson(json);

  @override
  final String email;
  @override
  final SnsProviderType providerType;
  @override
  final String firebaseUid;
  @override
  final String fullname;
  @override
  final String nickname;

  @override
  String toString() {
    return 'RegistrationInfo(email: $email, providerType: $providerType, firebaseUid: $firebaseUid, fullname: $fullname, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providerType, providerType) ||
                other.providerType == providerType) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, providerType, firebaseUid, fullname, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationInfoCopyWith<_$_RegistrationInfo> get copyWith =>
      __$$_RegistrationInfoCopyWithImpl<_$_RegistrationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationInfoToJson(
      this,
    );
  }
}

abstract class _RegistrationInfo implements RegistrationInfo {
  factory _RegistrationInfo(
      {required final String email,
      required final SnsProviderType providerType,
      required final String firebaseUid,
      required final String fullname,
      required final String nickname}) = _$_RegistrationInfo;

  factory _RegistrationInfo.fromJson(Map<String, dynamic> json) =
      _$_RegistrationInfo.fromJson;

  @override
  String get email;
  @override
  SnsProviderType get providerType;
  @override
  String get firebaseUid;
  @override
  String get fullname;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationInfoCopyWith<_$_RegistrationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
