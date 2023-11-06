// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataEntity {
  ProfileForm get userProfile => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)
        newUser,
    required TResult Function(
            @JsonKey(name: 'fbUid') String firebaseUid, ProfileForm userProfile)
        existUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult? Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataEntityNewUser value) newUser,
    required TResult Function(UserDataEntityExistUser value) existUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataEntityNewUser value)? newUser,
    TResult? Function(UserDataEntityExistUser value)? existUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataEntityNewUser value)? newUser,
    TResult Function(UserDataEntityExistUser value)? existUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataEntityCopyWith<UserDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEntityCopyWith<$Res> {
  factory $UserDataEntityCopyWith(
          UserDataEntity value, $Res Function(UserDataEntity) then) =
      _$UserDataEntityCopyWithImpl<$Res, UserDataEntity>;
  @useResult
  $Res call({ProfileForm userProfile});

  $ProfileFormCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$UserDataEntityCopyWithImpl<$Res, $Val extends UserDataEntity>
    implements $UserDataEntityCopyWith<$Res> {
  _$UserDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_value.copyWith(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ProfileForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFormCopyWith<$Res> get userProfile {
    return $ProfileFormCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataEntityNewUserCopyWith<$Res>
    implements $UserDataEntityCopyWith<$Res> {
  factory _$$UserDataEntityNewUserCopyWith(_$UserDataEntityNewUser value,
          $Res Function(_$UserDataEntityNewUser) then) =
      __$$UserDataEntityNewUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile});

  $SnsOAuthInfoCopyWith<$Res> get snsOAuthInfo;
  @override
  $ProfileFormCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$$UserDataEntityNewUserCopyWithImpl<$Res>
    extends _$UserDataEntityCopyWithImpl<$Res, _$UserDataEntityNewUser>
    implements _$$UserDataEntityNewUserCopyWith<$Res> {
  __$$UserDataEntityNewUserCopyWithImpl(_$UserDataEntityNewUser _value,
      $Res Function(_$UserDataEntityNewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snsOAuthInfo = null,
    Object? userProfile = null,
  }) {
    return _then(_$UserDataEntityNewUser(
      snsOAuthInfo: null == snsOAuthInfo
          ? _value.snsOAuthInfo
          : snsOAuthInfo // ignore: cast_nullable_to_non_nullable
              as SnsOAuthInfo,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ProfileForm,
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

class _$UserDataEntityNewUser extends UserDataEntityNewUser {
  const _$UserDataEntityNewUser(
      {required this.snsOAuthInfo, this.userProfile = const ProfileForm()})
      : super._();

  @override
  final SnsOAuthInfo snsOAuthInfo;
  @override
  @JsonKey()
  final ProfileForm userProfile;

  @override
  String toString() {
    return 'UserDataEntity.newUser(snsOAuthInfo: $snsOAuthInfo, userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataEntityNewUser &&
            (identical(other.snsOAuthInfo, snsOAuthInfo) ||
                other.snsOAuthInfo == snsOAuthInfo) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snsOAuthInfo, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataEntityNewUserCopyWith<_$UserDataEntityNewUser> get copyWith =>
      __$$UserDataEntityNewUserCopyWithImpl<_$UserDataEntityNewUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)
        newUser,
    required TResult Function(
            @JsonKey(name: 'fbUid') String firebaseUid, ProfileForm userProfile)
        existUser,
  }) {
    return newUser(snsOAuthInfo, userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult? Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
  }) {
    return newUser?.call(snsOAuthInfo, userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(snsOAuthInfo, userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataEntityNewUser value) newUser,
    required TResult Function(UserDataEntityExistUser value) existUser,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataEntityNewUser value)? newUser,
    TResult? Function(UserDataEntityExistUser value)? existUser,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataEntityNewUser value)? newUser,
    TResult Function(UserDataEntityExistUser value)? existUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class UserDataEntityNewUser extends UserDataEntity {
  const factory UserDataEntityNewUser(
      {required final SnsOAuthInfo snsOAuthInfo,
      final ProfileForm userProfile}) = _$UserDataEntityNewUser;
  const UserDataEntityNewUser._() : super._();

  SnsOAuthInfo get snsOAuthInfo;
  @override
  ProfileForm get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$UserDataEntityNewUserCopyWith<_$UserDataEntityNewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataEntityExistUserCopyWith<$Res>
    implements $UserDataEntityCopyWith<$Res> {
  factory _$$UserDataEntityExistUserCopyWith(_$UserDataEntityExistUser value,
          $Res Function(_$UserDataEntityExistUser) then) =
      __$$UserDataEntityExistUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fbUid') String firebaseUid, ProfileForm userProfile});

  @override
  $ProfileFormCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$$UserDataEntityExistUserCopyWithImpl<$Res>
    extends _$UserDataEntityCopyWithImpl<$Res, _$UserDataEntityExistUser>
    implements _$$UserDataEntityExistUserCopyWith<$Res> {
  __$$UserDataEntityExistUserCopyWithImpl(_$UserDataEntityExistUser _value,
      $Res Function(_$UserDataEntityExistUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseUid = null,
    Object? userProfile = null,
  }) {
    return _then(_$UserDataEntityExistUser(
      firebaseUid: null == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ProfileForm,
    ));
  }
}

/// @nodoc

class _$UserDataEntityExistUser extends UserDataEntityExistUser {
  const _$UserDataEntityExistUser(
      {@JsonKey(name: 'fbUid') required this.firebaseUid,
      this.userProfile = const ProfileForm()})
      : super._();

  @override
  @JsonKey(name: 'fbUid')
  final String firebaseUid;
  @override
  @JsonKey()
  final ProfileForm userProfile;

  @override
  String toString() {
    return 'UserDataEntity.existUser(firebaseUid: $firebaseUid, userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataEntityExistUser &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseUid, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataEntityExistUserCopyWith<_$UserDataEntityExistUser> get copyWith =>
      __$$UserDataEntityExistUserCopyWithImpl<_$UserDataEntityExistUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)
        newUser,
    required TResult Function(
            @JsonKey(name: 'fbUid') String firebaseUid, ProfileForm userProfile)
        existUser,
  }) {
    return existUser(firebaseUid, userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult? Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
  }) {
    return existUser?.call(firebaseUid, userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnsOAuthInfo snsOAuthInfo, ProfileForm userProfile)?
        newUser,
    TResult Function(@JsonKey(name: 'fbUid') String firebaseUid,
            ProfileForm userProfile)?
        existUser,
    required TResult orElse(),
  }) {
    if (existUser != null) {
      return existUser(firebaseUid, userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataEntityNewUser value) newUser,
    required TResult Function(UserDataEntityExistUser value) existUser,
  }) {
    return existUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataEntityNewUser value)? newUser,
    TResult? Function(UserDataEntityExistUser value)? existUser,
  }) {
    return existUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataEntityNewUser value)? newUser,
    TResult Function(UserDataEntityExistUser value)? existUser,
    required TResult orElse(),
  }) {
    if (existUser != null) {
      return existUser(this);
    }
    return orElse();
  }
}

abstract class UserDataEntityExistUser extends UserDataEntity {
  const factory UserDataEntityExistUser(
      {@JsonKey(name: 'fbUid') required final String firebaseUid,
      final ProfileForm userProfile}) = _$UserDataEntityExistUser;
  const UserDataEntityExistUser._() : super._();

  @JsonKey(name: 'fbUid')
  String get firebaseUid;
  @override
  ProfileForm get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$UserDataEntityExistUserCopyWith<_$UserDataEntityExistUser> get copyWith =>
      throw _privateConstructorUsedError;
}
