// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpDataEntity {
  FirebaseAuthData get firebaseAuthData => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<Pet> get pets => throw _privateConstructorUsedError;
  int? get profileImageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpDataEntityCopyWith<SignUpDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataEntityCopyWith<$Res> {
  factory $SignUpDataEntityCopyWith(
          SignUpDataEntity value, $Res Function(SignUpDataEntity) then) =
      _$SignUpDataEntityCopyWithImpl<$Res, SignUpDataEntity>;
  @useResult
  $Res call(
      {FirebaseAuthData firebaseAuthData,
      String nickname,
      List<Pet> pets,
      int? profileImageId});

  $FirebaseAuthDataCopyWith<$Res> get firebaseAuthData;
}

/// @nodoc
class _$SignUpDataEntityCopyWithImpl<$Res, $Val extends SignUpDataEntity>
    implements $SignUpDataEntityCopyWith<$Res> {
  _$SignUpDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseAuthData = null,
    Object? nickname = null,
    Object? pets = null,
    Object? profileImageId = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseAuthData: null == firebaseAuthData
          ? _value.firebaseAuthData
          : firebaseAuthData // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthData,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      pets: null == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      profileImageId: freezed == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirebaseAuthDataCopyWith<$Res> get firebaseAuthData {
    return $FirebaseAuthDataCopyWith<$Res>(_value.firebaseAuthData, (value) {
      return _then(_value.copyWith(firebaseAuthData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpDataEntityCopyWith<$Res>
    implements $SignUpDataEntityCopyWith<$Res> {
  factory _$$_SignUpDataEntityCopyWith(
          _$_SignUpDataEntity value, $Res Function(_$_SignUpDataEntity) then) =
      __$$_SignUpDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FirebaseAuthData firebaseAuthData,
      String nickname,
      List<Pet> pets,
      int? profileImageId});

  @override
  $FirebaseAuthDataCopyWith<$Res> get firebaseAuthData;
}

/// @nodoc
class __$$_SignUpDataEntityCopyWithImpl<$Res>
    extends _$SignUpDataEntityCopyWithImpl<$Res, _$_SignUpDataEntity>
    implements _$$_SignUpDataEntityCopyWith<$Res> {
  __$$_SignUpDataEntityCopyWithImpl(
      _$_SignUpDataEntity _value, $Res Function(_$_SignUpDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseAuthData = null,
    Object? nickname = null,
    Object? pets = null,
    Object? profileImageId = freezed,
  }) {
    return _then(_$_SignUpDataEntity(
      firebaseAuthData: null == firebaseAuthData
          ? _value.firebaseAuthData
          : firebaseAuthData // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthData,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      pets: null == pets
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      profileImageId: freezed == profileImageId
          ? _value.profileImageId
          : profileImageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SignUpDataEntity extends _SignUpDataEntity {
  const _$_SignUpDataEntity(
      {required this.firebaseAuthData,
      required this.nickname,
      final List<Pet> pets = const [],
      this.profileImageId})
      : _pets = pets,
        super._();

  @override
  final FirebaseAuthData firebaseAuthData;
  @override
  final String nickname;
  final List<Pet> _pets;
  @override
  @JsonKey()
  List<Pet> get pets {
    if (_pets is EqualUnmodifiableListView) return _pets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pets);
  }

  @override
  final int? profileImageId;

  @override
  String toString() {
    return 'SignUpDataEntity(firebaseAuthData: $firebaseAuthData, nickname: $nickname, pets: $pets, profileImageId: $profileImageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpDataEntity &&
            (identical(other.firebaseAuthData, firebaseAuthData) ||
                other.firebaseAuthData == firebaseAuthData) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality().equals(other._pets, _pets) &&
            (identical(other.profileImageId, profileImageId) ||
                other.profileImageId == profileImageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseAuthData, nickname,
      const DeepCollectionEquality().hash(_pets), profileImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpDataEntityCopyWith<_$_SignUpDataEntity> get copyWith =>
      __$$_SignUpDataEntityCopyWithImpl<_$_SignUpDataEntity>(this, _$identity);
}

abstract class _SignUpDataEntity extends SignUpDataEntity {
  const factory _SignUpDataEntity(
      {required final FirebaseAuthData firebaseAuthData,
      required final String nickname,
      final List<Pet> pets,
      final int? profileImageId}) = _$_SignUpDataEntity;
  const _SignUpDataEntity._() : super._();

  @override
  FirebaseAuthData get firebaseAuthData;
  @override
  String get nickname;
  @override
  List<Pet> get pets;
  @override
  int? get profileImageId;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpDataEntityCopyWith<_$_SignUpDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
