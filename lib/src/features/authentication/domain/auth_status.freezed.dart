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
    required TResult Function() newUser,
    required TResult Function(SnsProviderType latestLogInProviderType)
        loggedOut,
    required TResult Function(SnsProviderType providerType) signUpInProgress,
    required TResult Function(SnsProviderType providerType) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newUser,
    TResult? Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult? Function(SnsProviderType providerType)? signUpInProgress,
    TResult? Function(SnsProviderType providerType)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newUser,
    TResult Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult Function(SnsProviderType providerType)? signUpInProgress,
    TResult Function(SnsProviderType providerType)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusLoggedOut value) loggedOut,
    required TResult Function(AuthStatusSignUpInProgress value)
        signUpInProgress,
    required TResult Function(AuthStatusLoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusLoggedOut value)? loggedOut,
    TResult? Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult? Function(AuthStatusLoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusLoggedOut value)? loggedOut,
    TResult Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult Function(AuthStatusLoggedIn value)? loggedIn,
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
}

/// @nodoc
class __$$AuthStatusNewUserCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusNewUser>
    implements _$$AuthStatusNewUserCopyWith<$Res> {
  __$$AuthStatusNewUserCopyWithImpl(
      _$AuthStatusNewUser _value, $Res Function(_$AuthStatusNewUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStatusNewUser implements AuthStatusNewUser {
  _$AuthStatusNewUser();

  @override
  String toString() {
    return 'AuthStatus.newUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStatusNewUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newUser,
    required TResult Function(SnsProviderType latestLogInProviderType)
        loggedOut,
    required TResult Function(SnsProviderType providerType) signUpInProgress,
    required TResult Function(SnsProviderType providerType) loggedIn,
  }) {
    return newUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newUser,
    TResult? Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult? Function(SnsProviderType providerType)? signUpInProgress,
    TResult? Function(SnsProviderType providerType)? loggedIn,
  }) {
    return newUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newUser,
    TResult Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult Function(SnsProviderType providerType)? signUpInProgress,
    TResult Function(SnsProviderType providerType)? loggedIn,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusLoggedOut value) loggedOut,
    required TResult Function(AuthStatusSignUpInProgress value)
        signUpInProgress,
    required TResult Function(AuthStatusLoggedIn value) loggedIn,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusLoggedOut value)? loggedOut,
    TResult? Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult? Function(AuthStatusLoggedIn value)? loggedIn,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusLoggedOut value)? loggedOut,
    TResult Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult Function(AuthStatusLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class AuthStatusNewUser implements AuthStatus {
  factory AuthStatusNewUser() = _$AuthStatusNewUser;
}

/// @nodoc
abstract class _$$AuthStatusLoggedOutCopyWith<$Res> {
  factory _$$AuthStatusLoggedOutCopyWith(_$AuthStatusLoggedOut value,
          $Res Function(_$AuthStatusLoggedOut) then) =
      __$$AuthStatusLoggedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({SnsProviderType latestLogInProviderType});
}

/// @nodoc
class __$$AuthStatusLoggedOutCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusLoggedOut>
    implements _$$AuthStatusLoggedOutCopyWith<$Res> {
  __$$AuthStatusLoggedOutCopyWithImpl(
      _$AuthStatusLoggedOut _value, $Res Function(_$AuthStatusLoggedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestLogInProviderType = null,
  }) {
    return _then(_$AuthStatusLoggedOut(
      latestLogInProviderType: null == latestLogInProviderType
          ? _value.latestLogInProviderType
          : latestLogInProviderType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
    ));
  }
}

/// @nodoc

class _$AuthStatusLoggedOut implements AuthStatusLoggedOut {
  _$AuthStatusLoggedOut({required this.latestLogInProviderType});

  @override
  final SnsProviderType latestLogInProviderType;

  @override
  String toString() {
    return 'AuthStatus.loggedOut(latestLogInProviderType: $latestLogInProviderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusLoggedOut &&
            (identical(
                    other.latestLogInProviderType, latestLogInProviderType) ||
                other.latestLogInProviderType == latestLogInProviderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latestLogInProviderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusLoggedOutCopyWith<_$AuthStatusLoggedOut> get copyWith =>
      __$$AuthStatusLoggedOutCopyWithImpl<_$AuthStatusLoggedOut>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newUser,
    required TResult Function(SnsProviderType latestLogInProviderType)
        loggedOut,
    required TResult Function(SnsProviderType providerType) signUpInProgress,
    required TResult Function(SnsProviderType providerType) loggedIn,
  }) {
    return loggedOut(latestLogInProviderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newUser,
    TResult? Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult? Function(SnsProviderType providerType)? signUpInProgress,
    TResult? Function(SnsProviderType providerType)? loggedIn,
  }) {
    return loggedOut?.call(latestLogInProviderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newUser,
    TResult Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult Function(SnsProviderType providerType)? signUpInProgress,
    TResult Function(SnsProviderType providerType)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(latestLogInProviderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusLoggedOut value) loggedOut,
    required TResult Function(AuthStatusSignUpInProgress value)
        signUpInProgress,
    required TResult Function(AuthStatusLoggedIn value) loggedIn,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusLoggedOut value)? loggedOut,
    TResult? Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult? Function(AuthStatusLoggedIn value)? loggedIn,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusLoggedOut value)? loggedOut,
    TResult Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult Function(AuthStatusLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthStatusLoggedOut implements AuthStatus {
  factory AuthStatusLoggedOut(
          {required final SnsProviderType latestLogInProviderType}) =
      _$AuthStatusLoggedOut;

  SnsProviderType get latestLogInProviderType;
  @JsonKey(ignore: true)
  _$$AuthStatusLoggedOutCopyWith<_$AuthStatusLoggedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStatusSignUpInProgressCopyWith<$Res> {
  factory _$$AuthStatusSignUpInProgressCopyWith(
          _$AuthStatusSignUpInProgress value,
          $Res Function(_$AuthStatusSignUpInProgress) then) =
      __$$AuthStatusSignUpInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({SnsProviderType providerType});
}

/// @nodoc
class __$$AuthStatusSignUpInProgressCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusSignUpInProgress>
    implements _$$AuthStatusSignUpInProgressCopyWith<$Res> {
  __$$AuthStatusSignUpInProgressCopyWithImpl(
      _$AuthStatusSignUpInProgress _value,
      $Res Function(_$AuthStatusSignUpInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerType = null,
  }) {
    return _then(_$AuthStatusSignUpInProgress(
      providerType: null == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
    ));
  }
}

/// @nodoc

class _$AuthStatusSignUpInProgress implements AuthStatusSignUpInProgress {
  _$AuthStatusSignUpInProgress({required this.providerType});

  @override
  final SnsProviderType providerType;

  @override
  String toString() {
    return 'AuthStatus.signUpInProgress(providerType: $providerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusSignUpInProgress &&
            (identical(other.providerType, providerType) ||
                other.providerType == providerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, providerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusSignUpInProgressCopyWith<_$AuthStatusSignUpInProgress>
      get copyWith => __$$AuthStatusSignUpInProgressCopyWithImpl<
          _$AuthStatusSignUpInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newUser,
    required TResult Function(SnsProviderType latestLogInProviderType)
        loggedOut,
    required TResult Function(SnsProviderType providerType) signUpInProgress,
    required TResult Function(SnsProviderType providerType) loggedIn,
  }) {
    return signUpInProgress(providerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newUser,
    TResult? Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult? Function(SnsProviderType providerType)? signUpInProgress,
    TResult? Function(SnsProviderType providerType)? loggedIn,
  }) {
    return signUpInProgress?.call(providerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newUser,
    TResult Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult Function(SnsProviderType providerType)? signUpInProgress,
    TResult Function(SnsProviderType providerType)? loggedIn,
    required TResult orElse(),
  }) {
    if (signUpInProgress != null) {
      return signUpInProgress(providerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusLoggedOut value) loggedOut,
    required TResult Function(AuthStatusSignUpInProgress value)
        signUpInProgress,
    required TResult Function(AuthStatusLoggedIn value) loggedIn,
  }) {
    return signUpInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusLoggedOut value)? loggedOut,
    TResult? Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult? Function(AuthStatusLoggedIn value)? loggedIn,
  }) {
    return signUpInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusLoggedOut value)? loggedOut,
    TResult Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult Function(AuthStatusLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (signUpInProgress != null) {
      return signUpInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthStatusSignUpInProgress implements AuthStatus {
  factory AuthStatusSignUpInProgress(
          {required final SnsProviderType providerType}) =
      _$AuthStatusSignUpInProgress;

  SnsProviderType get providerType;
  @JsonKey(ignore: true)
  _$$AuthStatusSignUpInProgressCopyWith<_$AuthStatusSignUpInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStatusLoggedInCopyWith<$Res> {
  factory _$$AuthStatusLoggedInCopyWith(_$AuthStatusLoggedIn value,
          $Res Function(_$AuthStatusLoggedIn) then) =
      __$$AuthStatusLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({SnsProviderType providerType});
}

/// @nodoc
class __$$AuthStatusLoggedInCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusLoggedIn>
    implements _$$AuthStatusLoggedInCopyWith<$Res> {
  __$$AuthStatusLoggedInCopyWithImpl(
      _$AuthStatusLoggedIn _value, $Res Function(_$AuthStatusLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerType = null,
  }) {
    return _then(_$AuthStatusLoggedIn(
      providerType: null == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as SnsProviderType,
    ));
  }
}

/// @nodoc

class _$AuthStatusLoggedIn implements AuthStatusLoggedIn {
  _$AuthStatusLoggedIn({required this.providerType});

  @override
  final SnsProviderType providerType;

  @override
  String toString() {
    return 'AuthStatus.loggedIn(providerType: $providerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusLoggedIn &&
            (identical(other.providerType, providerType) ||
                other.providerType == providerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, providerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusLoggedInCopyWith<_$AuthStatusLoggedIn> get copyWith =>
      __$$AuthStatusLoggedInCopyWithImpl<_$AuthStatusLoggedIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newUser,
    required TResult Function(SnsProviderType latestLogInProviderType)
        loggedOut,
    required TResult Function(SnsProviderType providerType) signUpInProgress,
    required TResult Function(SnsProviderType providerType) loggedIn,
  }) {
    return loggedIn(providerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newUser,
    TResult? Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult? Function(SnsProviderType providerType)? signUpInProgress,
    TResult? Function(SnsProviderType providerType)? loggedIn,
  }) {
    return loggedIn?.call(providerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newUser,
    TResult Function(SnsProviderType latestLogInProviderType)? loggedOut,
    TResult Function(SnsProviderType providerType)? signUpInProgress,
    TResult Function(SnsProviderType providerType)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(providerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNewUser value) newUser,
    required TResult Function(AuthStatusLoggedOut value) loggedOut,
    required TResult Function(AuthStatusSignUpInProgress value)
        signUpInProgress,
    required TResult Function(AuthStatusLoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNewUser value)? newUser,
    TResult? Function(AuthStatusLoggedOut value)? loggedOut,
    TResult? Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult? Function(AuthStatusLoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNewUser value)? newUser,
    TResult Function(AuthStatusLoggedOut value)? loggedOut,
    TResult Function(AuthStatusSignUpInProgress value)? signUpInProgress,
    TResult Function(AuthStatusLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthStatusLoggedIn implements AuthStatus {
  factory AuthStatusLoggedIn({required final SnsProviderType providerType}) =
      _$AuthStatusLoggedIn;

  SnsProviderType get providerType;
  @JsonKey(ignore: true)
  _$$AuthStatusLoggedInCopyWith<_$AuthStatusLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
