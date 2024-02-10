// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetDataEntity {
  int get id => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get neutered => throw _privateConstructorUsedError;
  PetType get petType => throw _privateConstructorUsedError;
  SexType get sexType => throw _privateConstructorUsedError;
  int get weightKg => throw _privateConstructorUsedError;
  String get breed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetDataEntityCopyWith<PetDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDataEntityCopyWith<$Res> {
  factory $PetDataEntityCopyWith(
          PetDataEntity value, $Res Function(PetDataEntity) then) =
      _$PetDataEntityCopyWithImpl<$Res, PetDataEntity>;
  @useResult
  $Res call(
      {int id,
      int age,
      String name,
      bool neutered,
      PetType petType,
      SexType sexType,
      int weightKg,
      String breed});
}

/// @nodoc
class _$PetDataEntityCopyWithImpl<$Res, $Val extends PetDataEntity>
    implements $PetDataEntityCopyWith<$Res> {
  _$PetDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? name = null,
    Object? neutered = null,
    Object? petType = null,
    Object? sexType = null,
    Object? weightKg = null,
    Object? breed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      neutered: null == neutered
          ? _value.neutered
          : neutered // ignore: cast_nullable_to_non_nullable
              as bool,
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      sexType: null == sexType
          ? _value.sexType
          : sexType // ignore: cast_nullable_to_non_nullable
              as SexType,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as int,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetDataEntityCopyWith<$Res>
    implements $PetDataEntityCopyWith<$Res> {
  factory _$$_PetDataEntityCopyWith(
          _$_PetDataEntity value, $Res Function(_$_PetDataEntity) then) =
      __$$_PetDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int age,
      String name,
      bool neutered,
      PetType petType,
      SexType sexType,
      int weightKg,
      String breed});
}

/// @nodoc
class __$$_PetDataEntityCopyWithImpl<$Res>
    extends _$PetDataEntityCopyWithImpl<$Res, _$_PetDataEntity>
    implements _$$_PetDataEntityCopyWith<$Res> {
  __$$_PetDataEntityCopyWithImpl(
      _$_PetDataEntity _value, $Res Function(_$_PetDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? name = null,
    Object? neutered = null,
    Object? petType = null,
    Object? sexType = null,
    Object? weightKg = null,
    Object? breed = null,
  }) {
    return _then(_$_PetDataEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      neutered: null == neutered
          ? _value.neutered
          : neutered // ignore: cast_nullable_to_non_nullable
              as bool,
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      sexType: null == sexType
          ? _value.sexType
          : sexType // ignore: cast_nullable_to_non_nullable
              as SexType,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as int,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PetDataEntity extends _PetDataEntity {
  const _$_PetDataEntity(
      {required this.id,
      required this.age,
      required this.name,
      required this.neutered,
      required this.petType,
      required this.sexType,
      required this.weightKg,
      required this.breed})
      : super._();

  @override
  final int id;
  @override
  final int age;
  @override
  final String name;
  @override
  final bool neutered;
  @override
  final PetType petType;
  @override
  final SexType sexType;
  @override
  final int weightKg;
  @override
  final String breed;

  @override
  String toString() {
    return 'PetDataEntity(id: $id, age: $age, name: $name, neutered: $neutered, petType: $petType, sexType: $sexType, weightKg: $weightKg, breed: $breed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetDataEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.neutered, neutered) ||
                other.neutered == neutered) &&
            (identical(other.petType, petType) || other.petType == petType) &&
            (identical(other.sexType, sexType) || other.sexType == sexType) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.breed, breed) || other.breed == breed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, age, name, neutered, petType, sexType, weightKg, breed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetDataEntityCopyWith<_$_PetDataEntity> get copyWith =>
      __$$_PetDataEntityCopyWithImpl<_$_PetDataEntity>(this, _$identity);
}

abstract class _PetDataEntity extends PetDataEntity {
  const factory _PetDataEntity(
      {required final int id,
      required final int age,
      required final String name,
      required final bool neutered,
      required final PetType petType,
      required final SexType sexType,
      required final int weightKg,
      required final String breed}) = _$_PetDataEntity;
  const _PetDataEntity._() : super._();

  @override
  int get id;
  @override
  int get age;
  @override
  String get name;
  @override
  bool get neutered;
  @override
  PetType get petType;
  @override
  SexType get sexType;
  @override
  int get weightKg;
  @override
  String get breed;
  @override
  @JsonKey(ignore: true)
  _$$_PetDataEntityCopyWith<_$_PetDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
