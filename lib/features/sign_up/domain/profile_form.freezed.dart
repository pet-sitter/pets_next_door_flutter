// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileForm {
  TextFormState get nickname => throw _privateConstructorUsedError;
  List<Pet> get pets => throw _privateConstructorUsedError;
  int? get profileImageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormCopyWith<ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormCopyWith<$Res> {
  factory $ProfileFormCopyWith(
          ProfileForm value, $Res Function(ProfileForm) then) =
      _$ProfileFormCopyWithImpl<$Res, ProfileForm>;
  @useResult
  $Res call({TextFormState nickname, List<Pet> pets, int? profileImageId});

  $TextFormStateCopyWith<$Res> get nickname;
}

/// @nodoc
class _$ProfileFormCopyWithImpl<$Res, $Val extends ProfileForm>
    implements $ProfileFormCopyWith<$Res> {
  _$ProfileFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? pets = null,
    Object? profileImageId = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as TextFormState,
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
  $TextFormStateCopyWith<$Res> get nickname {
    return $TextFormStateCopyWith<$Res>(_value.nickname, (value) {
      return _then(_value.copyWith(nickname: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileFormCopyWith<$Res>
    implements $ProfileFormCopyWith<$Res> {
  factory _$$_ProfileFormCopyWith(
          _$_ProfileForm value, $Res Function(_$_ProfileForm) then) =
      __$$_ProfileFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextFormState nickname, List<Pet> pets, int? profileImageId});

  @override
  $TextFormStateCopyWith<$Res> get nickname;
}

/// @nodoc
class __$$_ProfileFormCopyWithImpl<$Res>
    extends _$ProfileFormCopyWithImpl<$Res, _$_ProfileForm>
    implements _$$_ProfileFormCopyWith<$Res> {
  __$$_ProfileFormCopyWithImpl(
      _$_ProfileForm _value, $Res Function(_$_ProfileForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? pets = null,
    Object? profileImageId = freezed,
  }) {
    return _then(_$_ProfileForm(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as TextFormState,
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

class _$_ProfileForm extends _ProfileForm {
  const _$_ProfileForm(
      {this.nickname = const TextFormState.empty(),
      final List<Pet> pets = const [],
      this.profileImageId})
      : _pets = pets,
        super._();

  @override
  @JsonKey()
  final TextFormState nickname;
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
    return 'ProfileForm(nickname: $nickname, pets: $pets, profileImageId: $profileImageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileForm &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality().equals(other._pets, _pets) &&
            (identical(other.profileImageId, profileImageId) ||
                other.profileImageId == profileImageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname,
      const DeepCollectionEquality().hash(_pets), profileImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      __$$_ProfileFormCopyWithImpl<_$_ProfileForm>(this, _$identity);
}

abstract class _ProfileForm extends ProfileForm {
  const factory _ProfileForm(
      {final TextFormState nickname,
      final List<Pet> pets,
      final int? profileImageId}) = _$_ProfileForm;
  const _ProfileForm._() : super._();

  @override
  TextFormState get nickname;
  @override
  List<Pet> get pets;
  @override
  int? get profileImageId;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}
