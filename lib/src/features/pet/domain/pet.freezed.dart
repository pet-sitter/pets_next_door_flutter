// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  PetType get petType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get neutered => throw _privateConstructorUsedError;
  String get breed => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String? get profileImgUrl => throw _privateConstructorUsedError;
  String? get extraInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {PetType petType,
      String name,
      bool neutered,
      String breed,
      DateTime birthDate,
      double weight,
      String? profileImgUrl,
      String? extraInfo});
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petType = null,
    Object? name = null,
    Object? neutered = null,
    Object? breed = null,
    Object? birthDate = null,
    Object? weight = null,
    Object? profileImgUrl = freezed,
    Object? extraInfo = freezed,
  }) {
    return _then(_value.copyWith(
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      neutered: null == neutered
          ? _value.neutered
          : neutered // ignore: cast_nullable_to_non_nullable
              as bool,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      profileImgUrl: freezed == profileImgUrl
          ? _value.profileImgUrl
          : profileImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$_PetCopyWith(_$_Pet value, $Res Function(_$_Pet) then) =
      __$$_PetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PetType petType,
      String name,
      bool neutered,
      String breed,
      DateTime birthDate,
      double weight,
      String? profileImgUrl,
      String? extraInfo});
}

/// @nodoc
class __$$_PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$_Pet>
    implements _$$_PetCopyWith<$Res> {
  __$$_PetCopyWithImpl(_$_Pet _value, $Res Function(_$_Pet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petType = null,
    Object? name = null,
    Object? neutered = null,
    Object? breed = null,
    Object? birthDate = null,
    Object? weight = null,
    Object? profileImgUrl = freezed,
    Object? extraInfo = freezed,
  }) {
    return _then(_$_Pet(
      petType: null == petType
          ? _value.petType
          : petType // ignore: cast_nullable_to_non_nullable
              as PetType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      neutered: null == neutered
          ? _value.neutered
          : neutered // ignore: cast_nullable_to_non_nullable
              as bool,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      profileImgUrl: freezed == profileImgUrl
          ? _value.profileImgUrl
          : profileImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pet implements _Pet {
  _$_Pet(
      {required this.petType,
      required this.name,
      required this.neutered,
      required this.breed,
      required this.birthDate,
      required this.weight,
      this.profileImgUrl = '',
      this.extraInfo = ''});

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$$_PetFromJson(json);

  @override
  final PetType petType;
  @override
  final String name;
  @override
  final bool neutered;
  @override
  final String breed;
  @override
  final DateTime birthDate;
  @override
  final double weight;
  @override
  @JsonKey()
  final String? profileImgUrl;
  @override
  @JsonKey()
  final String? extraInfo;

  @override
  String toString() {
    return 'Pet(petType: $petType, name: $name, neutered: $neutered, breed: $breed, birthDate: $birthDate, weight: $weight, profileImgUrl: $profileImgUrl, extraInfo: $extraInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pet &&
            (identical(other.petType, petType) || other.petType == petType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.neutered, neutered) ||
                other.neutered == neutered) &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.profileImgUrl, profileImgUrl) ||
                other.profileImgUrl == profileImgUrl) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, petType, name, neutered, breed,
      birthDate, weight, profileImgUrl, extraInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetCopyWith<_$_Pet> get copyWith =>
      __$$_PetCopyWithImpl<_$_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetToJson(
      this,
    );
  }
}

abstract class _Pet implements Pet {
  factory _Pet(
      {required final PetType petType,
      required final String name,
      required final bool neutered,
      required final String breed,
      required final DateTime birthDate,
      required final double weight,
      final String? profileImgUrl,
      final String? extraInfo}) = _$_Pet;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

  @override
  PetType get petType;
  @override
  String get name;
  @override
  bool get neutered;
  @override
  String get breed;
  @override
  DateTime get birthDate;
  @override
  double get weight;
  @override
  String? get profileImgUrl;
  @override
  String? get extraInfo;
  @override
  @JsonKey(ignore: true)
  _$$_PetCopyWith<_$_Pet> get copyWith => throw _privateConstructorUsedError;
}
