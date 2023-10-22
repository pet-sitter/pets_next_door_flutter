// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) newUser,
    required TResult Function(UserCredential firebaseUserCredential)
        existingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult? Function(UserCredential firebaseUserCredential)? existingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult Function(UserCredential firebaseUserCredential)? existingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusExistingUser value) existingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusExistingUser value)? existingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusExistingUser value)? existingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStatusNewUserCopyWith<$Res> {
  factory _$$AuthStatusNewUserCopyWith(
          _$AuthStatusNewUser value, $Res Function(_$AuthStatusNewUser) then) =
      __$$AuthStatusNewUserCopyWithImpl<$Res>;
  @useResult
  $Res call({SnsOAuthInfo snsOAuthInfo});

  $SnsOAuthInfoCopyWith<$Res> get snsOAuthInfo;
}

/// @nodoc
class __$$AuthStatusNewUserCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusNewUser>
    implements _$$AuthStatusNewUserCopyWith<$Res> {
  __$$AuthStatusNewUserCopyWithImpl(
      _$AuthStatusNewUser _value, $Res Function(_$AuthStatusNewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snsOAuthInfo = null,
  }) {
    return _then(_$AuthStatusNewUser(
      snsOAuthInfo: null == snsOAuthInfo
          ? _value.snsOAuthInfo
          : snsOAuthInfo // ignore: cast_nullable_to_non_nullable
              as SnsOAuthInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SnsOAuthInfoCopyWith<$Res> get snsOAuthInfo {
    return $SnsOAuthInfoCopyWith<$Res>(_value.snsOAuthInfo, (value) {
      return _then(_value.copyWith(snsOAuthInfo: value));
    });
  }
}

/// @nodoc

class _$AuthStatusNewUser implements AuthStatusNewUser {
  _$AuthStatusNewUser({required this.snsOAuthInfo});

  @override
  final SnsOAuthInfo snsOAuthInfo;

  @override
  String toString() {
    return 'AuthStatus.newUser(snsOAuthInfo: $snsOAuthInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusNewUser &&
            (identical(other.snsOAuthInfo, snsOAuthInfo) ||
                other.snsOAuthInfo == snsOAuthInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snsOAuthInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusNewUserCopyWith<_$AuthStatusNewUser> get copyWith =>
      __$$AuthStatusNewUserCopyWithImpl<_$AuthStatusNewUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) newUser,
    required TResult Function(UserCredential firebaseUserCredential)
        existingUser,
  }) {
    return newUser(snsOAuthInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult? Function(UserCredential firebaseUserCredential)? existingUser,
  }) {
    return newUser?.call(snsOAuthInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult Function(UserCredential firebaseUserCredential)? existingUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(snsOAuthInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusExistingUser value) existingUser,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusExistingUser value)? existingUser,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusExistingUser value)? existingUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class AuthStatusNewUser implements AuthStatus {
  factory AuthStatusNewUser({required final SnsOAuthInfo snsOAuthInfo}) =
      _$AuthStatusNewUser;

  SnsOAuthInfo get snsOAuthInfo;
  @JsonKey(ignore: true)
  _$$AuthStatusNewUserCopyWith<_$AuthStatusNewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStatusExistingUserCopyWith<$Res> {
  factory _$$AuthStatusExistingUserCopyWith(_$AuthStatusExistingUser value,
          $Res Function(_$AuthStatusExistingUser) then) =
      __$$AuthStatusExistingUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential firebaseUserCredential});
}

/// @nodoc
class __$$AuthStatusExistingUserCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusExistingUser>
    implements _$$AuthStatusExistingUserCopyWith<$Res> {
  __$$AuthStatusExistingUserCopyWithImpl(_$AuthStatusExistingUser _value,
      $Res Function(_$AuthStatusExistingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseUserCredential = null,
  }) {
    return _then(_$AuthStatusExistingUser(
      firebaseUserCredential: null == firebaseUserCredential
          ? _value.firebaseUserCredential
          : firebaseUserCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$AuthStatusExistingUser implements AuthStatusExistingUser {
  _$AuthStatusExistingUser({required this.firebaseUserCredential});

  @override
  final UserCredential firebaseUserCredential;

  @override
  String toString() {
    return 'AuthStatus.existingUser(firebaseUserCredential: $firebaseUserCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusExistingUser &&
            (identical(other.firebaseUserCredential, firebaseUserCredential) ||
                other.firebaseUserCredential == firebaseUserCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseUserCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusExistingUserCopyWith<_$AuthStatusExistingUser> get copyWith =>
      __$$AuthStatusExistingUserCopyWithImpl<_$AuthStatusExistingUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) newUser,
    required TResult Function(UserCredential firebaseUserCredential)
        existingUser,
  }) {
    return existingUser(firebaseUserCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult? Function(UserCredential firebaseUserCredential)? existingUser,
  }) {
    return existingUser?.call(firebaseUserCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? newUser,
    TResult Function(UserCredential firebaseUserCredential)? existingUser,
    required TResult orElse(),
  }) {
    if (existingUser != null) {
      return existingUser(firebaseUserCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusExistingUser value) existingUser,
  }) {
    return existingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusExistingUser value)? existingUser,
  }) {
    return existingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusExistingUser value)? existingUser,
    required TResult orElse(),
  }) {
    if (existingUser != null) {
      return existingUser(this);
    }
    return orElse();
  }
}

abstract class AuthStatusExistingUser implements AuthStatus {
  factory AuthStatusExistingUser(
          {required final UserCredential firebaseUserCredential}) =
      _$AuthStatusExistingUser;

  UserCredential get firebaseUserCredential;
  @JsonKey(ignore: true)
  _$$AuthStatusExistingUserCopyWith<_$AuthStatusExistingUser> get copyWith =>
      throw _privateConstructorUsedError;
}
