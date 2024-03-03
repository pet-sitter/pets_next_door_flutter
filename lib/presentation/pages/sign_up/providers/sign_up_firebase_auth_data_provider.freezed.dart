// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_firebase_auth_data_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseAuthData {
  SnsProviderType get firebaseProviderType =>
      throw _privateConstructorUsedError;
  String get firebaseUid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseAuthDataCopyWith<FirebaseAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseAuthDataCopyWith<$Res> {
  factory $FirebaseAuthDataCopyWith(
          FirebaseAuthData value, $Res Function(FirebaseAuthData) then) =
      _$FirebaseAuthDataCopyWithImpl<$Res, FirebaseAuthData>;
  @useResult
  $Res call(
      {SnsProviderType firebaseProviderType,
      String firebaseUid,
      String email,
      String fullname});
}

/// @nodoc
class _$FirebaseAuthDataCopyWithImpl<$Res, $Val extends FirebaseAuthData>
    implements $FirebaseAuthDataCopyWith<$Res> {
  _$FirebaseAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseProviderType = null,
    Object? firebaseUid = null,
    Object? email = null,
    Object? fullname = null,
  }) {
    return _then(_value.copyWith(
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseAuthDataCopyWith<$Res>
    implements $FirebaseAuthDataCopyWith<$Res> {
  factory _$$_FirebaseAuthDataCopyWith(
          _$_FirebaseAuthData value, $Res Function(_$_FirebaseAuthData) then) =
      __$$_FirebaseAuthDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SnsProviderType firebaseProviderType,
      String firebaseUid,
      String email,
      String fullname});
}

/// @nodoc
class __$$_FirebaseAuthDataCopyWithImpl<$Res>
    extends _$FirebaseAuthDataCopyWithImpl<$Res, _$_FirebaseAuthData>
    implements _$$_FirebaseAuthDataCopyWith<$Res> {
  __$$_FirebaseAuthDataCopyWithImpl(
      _$_FirebaseAuthData _value, $Res Function(_$_FirebaseAuthData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseProviderType = null,
    Object? firebaseUid = null,
    Object? email = null,
    Object? fullname = null,
  }) {
    return _then(_$_FirebaseAuthData(
      firebaseProviderType: null == firebaseProviderType
          ? _value.firebaseProviderType
          : firebaseProviderType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseAuthData extends _FirebaseAuthData {
  const _$_FirebaseAuthData(
      {required this.firebaseProviderType,
      required this.firebaseUid,
      required this.email,
      required this.fullname})
      : super._();

  @override
  final SnsProviderType firebaseProviderType;
  @override
  final String firebaseUid;
  @override
  final String email;
  @override
  final String fullname;

  @override
  String toString() {
    return 'FirebaseAuthData(firebaseProviderType: $firebaseProviderType, firebaseUid: $firebaseUid, email: $email, fullname: $fullname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseAuthData &&
            (identical(other.firebaseProviderType, firebaseProviderType) ||
                other.firebaseProviderType == firebaseProviderType) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firebaseProviderType, firebaseUid, email, fullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseAuthDataCopyWith<_$_FirebaseAuthData> get copyWith =>
      __$$_FirebaseAuthDataCopyWithImpl<_$_FirebaseAuthData>(this, _$identity);
}

abstract class _FirebaseAuthData extends FirebaseAuthData {
  const factory _FirebaseAuthData(
      {required final SnsProviderType firebaseProviderType,
      required final String firebaseUid,
      required final String email,
      required final String fullname}) = _$_FirebaseAuthData;
  const _FirebaseAuthData._() : super._();

  @override
  SnsProviderType get firebaseProviderType;
  @override
  String get firebaseUid;
  @override
  String get email;
  @override
  String get fullname;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseAuthDataCopyWith<_$_FirebaseAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
