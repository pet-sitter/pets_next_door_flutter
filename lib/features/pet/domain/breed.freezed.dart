// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Breed _$BreedFromJson(Map<String, dynamic> json) {
  return _Breed.fromJson(json);
}

/// @nodoc
mixin _$Breed {
  int get id => throw _privateConstructorUsedError;
  PetType get petType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedCopyWith<Breed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedCopyWith<$Res> {
  factory $BreedCopyWith(Breed value, $Res Function(Breed) then) =
      _$BreedCopyWithImpl<$Res, Breed>;
  @useResult
  $Res call({int id, PetType petType, String name});
}

/// @nodoc
class _$BreedCopyWithImpl<$Res, $Val extends Breed>
    implements $BreedCopyWith<$Res> {
  _$BreedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petType = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BreedCopyWith<$Res> implements $BreedCopyWith<$Res> {
  factory _$$_BreedCopyWith(_$_Breed value, $Res Function(_$_Breed) then) =
      __$$_BreedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PetType petType, String name});
}

/// @nodoc
class __$$_BreedCopyWithImpl<$Res> extends _$BreedCopyWithImpl<$Res, _$_Breed>
    implements _$$_BreedCopyWith<$Res> {
  __$$_BreedCopyWithImpl(_$_Breed _value, $Res Function(_$_Breed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petType = null,
    Object? name = null,
  }) {
    return _then(_$_Breed(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Breed implements _Breed {
  _$_Breed({required this.id, required this.petType, required this.name});

  factory _$_Breed.fromJson(Map<String, dynamic> json) =>
      _$$_BreedFromJson(json);

  @override
  final int id;
  @override
  final PetType petType;
  @override
  final String name;

  @override
  String toString() {
    return 'Breed(id: $id, petType: $petType, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Breed &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petType, petType) || other.petType == petType) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, petType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BreedCopyWith<_$_Breed> get copyWith =>
      __$$_BreedCopyWithImpl<_$_Breed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedToJson(
      this,
    );
  }
}

abstract class _Breed implements Breed {
  factory _Breed(
      {required final int id,
      required final PetType petType,
      required final String name}) = _$_Breed;

  factory _Breed.fromJson(Map<String, dynamic> json) = _$_Breed.fromJson;

  @override
  int get id;
  @override
  PetType get petType;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BreedCopyWith<_$_Breed> get copyWith =>
      throw _privateConstructorUsedError;
}
