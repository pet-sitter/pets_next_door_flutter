// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sns_oauth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnsOAuthInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthCredential authCredential) credential,
    required TResult Function(OAuthToken authToken) token,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthCredential authCredential)? credential,
    TResult? Function(OAuthToken authToken)? token,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthCredential authCredential)? credential,
    TResult Function(OAuthToken authToken)? token,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnsOAuthInfoCredential value) credential,
    required TResult Function(SnsOAuthInfoToken value) token,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfoCredential value)? credential,
    TResult? Function(SnsOAuthInfoToken value)? token,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnsOAuthInfoCredential value)? credential,
    TResult Function(SnsOAuthInfoToken value)? token,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsOAuthInfoCopyWith<$Res> {
  factory $SnsOAuthInfoCopyWith(
          SnsOAuthInfo value, $Res Function(SnsOAuthInfo) then) =
      _$SnsOAuthInfoCopyWithImpl<$Res, SnsOAuthInfo>;
}

/// @nodoc
class _$SnsOAuthInfoCopyWithImpl<$Res, $Val extends SnsOAuthInfo>
    implements $SnsOAuthInfoCopyWith<$Res> {
  _$SnsOAuthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SnsOAuthInfoCredentialCopyWith<$Res> {
  factory _$$SnsOAuthInfoCredentialCopyWith(_$SnsOAuthInfoCredential value,
          $Res Function(_$SnsOAuthInfoCredential) then) =
      __$$SnsOAuthInfoCredentialCopyWithImpl<$Res>;
  @useResult
  $Res call({OAuthCredential authCredential});
}

/// @nodoc
class __$$SnsOAuthInfoCredentialCopyWithImpl<$Res>
    extends _$SnsOAuthInfoCopyWithImpl<$Res, _$SnsOAuthInfoCredential>
    implements _$$SnsOAuthInfoCredentialCopyWith<$Res> {
  __$$SnsOAuthInfoCredentialCopyWithImpl(_$SnsOAuthInfoCredential _value,
      $Res Function(_$SnsOAuthInfoCredential) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCredential = null,
  }) {
    return _then(_$SnsOAuthInfoCredential(
      authCredential: null == authCredential
          ? _value.authCredential
          : authCredential // ignore: cast_nullable_to_non_nullable
              as OAuthCredential,
    ));
  }
}

/// @nodoc

class _$SnsOAuthInfoCredential implements SnsOAuthInfoCredential {
  _$SnsOAuthInfoCredential({required this.authCredential});

  @override
  final OAuthCredential authCredential;

  @override
  String toString() {
    return 'SnsOAuthInfo.credential(authCredential: $authCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnsOAuthInfoCredential &&
            (identical(other.authCredential, authCredential) ||
                other.authCredential == authCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnsOAuthInfoCredentialCopyWith<_$SnsOAuthInfoCredential> get copyWith =>
      __$$SnsOAuthInfoCredentialCopyWithImpl<_$SnsOAuthInfoCredential>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthCredential authCredential) credential,
    required TResult Function(OAuthToken authToken) token,
  }) {
    return credential(authCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthCredential authCredential)? credential,
    TResult? Function(OAuthToken authToken)? token,
  }) {
    return credential?.call(authCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthCredential authCredential)? credential,
    TResult Function(OAuthToken authToken)? token,
    required TResult orElse(),
  }) {
    if (credential != null) {
      return credential(authCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnsOAuthInfoCredential value) credential,
    required TResult Function(SnsOAuthInfoToken value) token,
  }) {
    return credential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfoCredential value)? credential,
    TResult? Function(SnsOAuthInfoToken value)? token,
  }) {
    return credential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnsOAuthInfoCredential value)? credential,
    TResult Function(SnsOAuthInfoToken value)? token,
    required TResult orElse(),
  }) {
    if (credential != null) {
      return credential(this);
    }
    return orElse();
  }
}

abstract class SnsOAuthInfoCredential implements SnsOAuthInfo {
  factory SnsOAuthInfoCredential(
          {required final OAuthCredential authCredential}) =
      _$SnsOAuthInfoCredential;

  OAuthCredential get authCredential;
  @JsonKey(ignore: true)
  _$$SnsOAuthInfoCredentialCopyWith<_$SnsOAuthInfoCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SnsOAuthInfoTokenCopyWith<$Res> {
  factory _$$SnsOAuthInfoTokenCopyWith(
          _$SnsOAuthInfoToken value, $Res Function(_$SnsOAuthInfoToken) then) =
      __$$SnsOAuthInfoTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({OAuthToken authToken});
}

/// @nodoc
class __$$SnsOAuthInfoTokenCopyWithImpl<$Res>
    extends _$SnsOAuthInfoCopyWithImpl<$Res, _$SnsOAuthInfoToken>
    implements _$$SnsOAuthInfoTokenCopyWith<$Res> {
  __$$SnsOAuthInfoTokenCopyWithImpl(
      _$SnsOAuthInfoToken _value, $Res Function(_$SnsOAuthInfoToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$SnsOAuthInfoToken(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as OAuthToken,
    ));
  }
}

/// @nodoc

class _$SnsOAuthInfoToken implements SnsOAuthInfoToken {
  _$SnsOAuthInfoToken({required this.authToken});

  @override
  final OAuthToken authToken;

  @override
  String toString() {
    return 'SnsOAuthInfo.token(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnsOAuthInfoToken &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnsOAuthInfoTokenCopyWith<_$SnsOAuthInfoToken> get copyWith =>
      __$$SnsOAuthInfoTokenCopyWithImpl<_$SnsOAuthInfoToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthCredential authCredential) credential,
    required TResult Function(OAuthToken authToken) token,
  }) {
    return token(authToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthCredential authCredential)? credential,
    TResult? Function(OAuthToken authToken)? token,
  }) {
    return token?.call(authToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthCredential authCredential)? credential,
    TResult Function(OAuthToken authToken)? token,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(authToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnsOAuthInfoCredential value) credential,
    required TResult Function(SnsOAuthInfoToken value) token,
  }) {
    return token(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfoCredential value)? credential,
    TResult? Function(SnsOAuthInfoToken value)? token,
  }) {
    return token?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnsOAuthInfoCredential value)? credential,
    TResult Function(SnsOAuthInfoToken value)? token,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(this);
    }
    return orElse();
  }
}

abstract class SnsOAuthInfoToken implements SnsOAuthInfo {
  factory SnsOAuthInfoToken({required final OAuthToken authToken}) =
      _$SnsOAuthInfoToken;

  OAuthToken get authToken;
  @JsonKey(ignore: true)
  _$$SnsOAuthInfoTokenCopyWith<_$SnsOAuthInfoToken> get copyWith =>
      throw _privateConstructorUsedError;
}
