// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) register,
    required TResult Function(int userId) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult? Function(int userId)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult Function(int userId)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileStateRegister value) register,
    required TResult Function(UserProfileStateEdit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileStateRegister value)? register,
    TResult? Function(UserProfileStateEdit value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileStateRegister value)? register,
    TResult Function(UserProfileStateEdit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileViewStateCopyWith<$Res> {
  factory $UserProfileViewStateCopyWith(UserProfileViewState value,
          $Res Function(UserProfileViewState) then) =
      _$UserProfileViewStateCopyWithImpl<$Res, UserProfileViewState>;
}

/// @nodoc
class _$UserProfileViewStateCopyWithImpl<$Res,
        $Val extends UserProfileViewState>
    implements $UserProfileViewStateCopyWith<$Res> {
  _$UserProfileViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserProfileStateRegisterCopyWith<$Res> {
  factory _$$UserProfileStateRegisterCopyWith(_$UserProfileStateRegister value,
          $Res Function(_$UserProfileStateRegister) then) =
      __$$UserProfileStateRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({SnsOAuthInfo snsOAuthInfo});

  $SnsOAuthInfoCopyWith<$Res> get snsOAuthInfo;
}

/// @nodoc
class __$$UserProfileStateRegisterCopyWithImpl<$Res>
    extends _$UserProfileViewStateCopyWithImpl<$Res, _$UserProfileStateRegister>
    implements _$$UserProfileStateRegisterCopyWith<$Res> {
  __$$UserProfileStateRegisterCopyWithImpl(_$UserProfileStateRegister _value,
      $Res Function(_$UserProfileStateRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snsOAuthInfo = null,
  }) {
    return _then(_$UserProfileStateRegister(
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

class _$UserProfileStateRegister implements UserProfileStateRegister {
  _$UserProfileStateRegister({required this.snsOAuthInfo});

  @override
  final SnsOAuthInfo snsOAuthInfo;

  @override
  String toString() {
    return 'UserProfileViewState.register(snsOAuthInfo: $snsOAuthInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateRegister &&
            (identical(other.snsOAuthInfo, snsOAuthInfo) ||
                other.snsOAuthInfo == snsOAuthInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snsOAuthInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateRegisterCopyWith<_$UserProfileStateRegister>
      get copyWith =>
          __$$UserProfileStateRegisterCopyWithImpl<_$UserProfileStateRegister>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) register,
    required TResult Function(int userId) edit,
  }) {
    return register(snsOAuthInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult? Function(int userId)? edit,
  }) {
    return register?.call(snsOAuthInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult Function(int userId)? edit,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(snsOAuthInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileStateRegister value) register,
    required TResult Function(UserProfileStateEdit value) edit,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileStateRegister value)? register,
    TResult? Function(UserProfileStateEdit value)? edit,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileStateRegister value)? register,
    TResult Function(UserProfileStateEdit value)? edit,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class UserProfileStateRegister implements UserProfileViewState {
  factory UserProfileStateRegister({required final SnsOAuthInfo snsOAuthInfo}) =
      _$UserProfileStateRegister;

  SnsOAuthInfo get snsOAuthInfo;
  @JsonKey(ignore: true)
  _$$UserProfileStateRegisterCopyWith<_$UserProfileStateRegister>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileStateEditCopyWith<$Res> {
  factory _$$UserProfileStateEditCopyWith(_$UserProfileStateEdit value,
          $Res Function(_$UserProfileStateEdit) then) =
      __$$UserProfileStateEditCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserProfileStateEditCopyWithImpl<$Res>
    extends _$UserProfileViewStateCopyWithImpl<$Res, _$UserProfileStateEdit>
    implements _$$UserProfileStateEditCopyWith<$Res> {
  __$$UserProfileStateEditCopyWithImpl(_$UserProfileStateEdit _value,
      $Res Function(_$UserProfileStateEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserProfileStateEdit(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserProfileStateEdit implements UserProfileStateEdit {
  _$UserProfileStateEdit({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'UserProfileViewState.edit(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateEdit &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateEditCopyWith<_$UserProfileStateEdit> get copyWith =>
      __$$UserProfileStateEditCopyWithImpl<_$UserProfileStateEdit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnsOAuthInfo snsOAuthInfo) register,
    required TResult Function(int userId) edit,
  }) {
    return edit(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult? Function(int userId)? edit,
  }) {
    return edit?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo)? register,
    TResult Function(int userId)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileStateRegister value) register,
    required TResult Function(UserProfileStateEdit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileStateRegister value)? register,
    TResult? Function(UserProfileStateEdit value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileStateRegister value)? register,
    TResult Function(UserProfileStateEdit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class UserProfileStateEdit implements UserProfileViewState {
  factory UserProfileStateEdit({required final int userId}) =
      _$UserProfileStateEdit;

  int get userId;
  @JsonKey(ignore: true)
  _$$UserProfileStateEditCopyWith<_$UserProfileStateEdit> get copyWith =>
      throw _privateConstructorUsedError;
}
