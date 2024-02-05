// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sos_condition_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SosConditionEntity {
  int get code => throw _privateConstructorUsedError;
  String get iconImgUrl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SosConditionEntityCopyWith<SosConditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SosConditionEntityCopyWith<$Res> {
  factory $SosConditionEntityCopyWith(
          SosConditionEntity value, $Res Function(SosConditionEntity) then) =
      _$SosConditionEntityCopyWithImpl<$Res, SosConditionEntity>;
  @useResult
  $Res call({int code, String iconImgUrl, String text});
}

/// @nodoc
class _$SosConditionEntityCopyWithImpl<$Res, $Val extends SosConditionEntity>
    implements $SosConditionEntityCopyWith<$Res> {
  _$SosConditionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? iconImgUrl = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      iconImgUrl: null == iconImgUrl
          ? _value.iconImgUrl
          : iconImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SosConditionEntityCopyWith<$Res>
    implements $SosConditionEntityCopyWith<$Res> {
  factory _$$_SosConditionEntityCopyWith(_$_SosConditionEntity value,
          $Res Function(_$_SosConditionEntity) then) =
      __$$_SosConditionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String iconImgUrl, String text});
}

/// @nodoc
class __$$_SosConditionEntityCopyWithImpl<$Res>
    extends _$SosConditionEntityCopyWithImpl<$Res, _$_SosConditionEntity>
    implements _$$_SosConditionEntityCopyWith<$Res> {
  __$$_SosConditionEntityCopyWithImpl(
      _$_SosConditionEntity _value, $Res Function(_$_SosConditionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? iconImgUrl = null,
    Object? text = null,
  }) {
    return _then(_$_SosConditionEntity(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      iconImgUrl: null == iconImgUrl
          ? _value.iconImgUrl
          : iconImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SosConditionEntity extends _SosConditionEntity {
  const _$_SosConditionEntity(
      {required this.code, required this.iconImgUrl, required this.text})
      : super._();

  @override
  final int code;
  @override
  final String iconImgUrl;
  @override
  final String text;

  @override
  String toString() {
    return 'SosConditionEntity(code: $code, iconImgUrl: $iconImgUrl, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SosConditionEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.iconImgUrl, iconImgUrl) ||
                other.iconImgUrl == iconImgUrl) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, iconImgUrl, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SosConditionEntityCopyWith<_$_SosConditionEntity> get copyWith =>
      __$$_SosConditionEntityCopyWithImpl<_$_SosConditionEntity>(
          this, _$identity);
}

abstract class _SosConditionEntity extends SosConditionEntity {
  const factory _SosConditionEntity(
      {required final int code,
      required final String iconImgUrl,
      required final String text}) = _$_SosConditionEntity;
  const _SosConditionEntity._() : super._();

  @override
  int get code;
  @override
  String get iconImgUrl;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SosConditionEntityCopyWith<_$_SosConditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
