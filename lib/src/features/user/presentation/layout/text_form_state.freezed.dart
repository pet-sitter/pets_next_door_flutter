// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String text, String error) error,
    required TResult Function(String text) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String text, String error)? error,
    TResult? Function(String text)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String text, String error)? error,
    TResult Function(String text)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormStateEmpty value) empty,
    required TResult Function(TextFormStateError value) error,
    required TResult Function(TextFormStateValid value) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormStateEmpty value)? empty,
    TResult? Function(TextFormStateError value)? error,
    TResult? Function(TextFormStateValid value)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormStateEmpty value)? empty,
    TResult Function(TextFormStateError value)? error,
    TResult Function(TextFormStateValid value)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFormStateCopyWith<$Res> {
  factory $TextFormStateCopyWith(
          TextFormState value, $Res Function(TextFormState) then) =
      _$TextFormStateCopyWithImpl<$Res, TextFormState>;
}

/// @nodoc
class _$TextFormStateCopyWithImpl<$Res, $Val extends TextFormState>
    implements $TextFormStateCopyWith<$Res> {
  _$TextFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TextFormStateEmptyCopyWith<$Res> {
  factory _$$TextFormStateEmptyCopyWith(_$TextFormStateEmpty value,
          $Res Function(_$TextFormStateEmpty) then) =
      __$$TextFormStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextFormStateEmptyCopyWithImpl<$Res>
    extends _$TextFormStateCopyWithImpl<$Res, _$TextFormStateEmpty>
    implements _$$TextFormStateEmptyCopyWith<$Res> {
  __$$TextFormStateEmptyCopyWithImpl(
      _$TextFormStateEmpty _value, $Res Function(_$TextFormStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TextFormStateEmpty implements TextFormStateEmpty {
  const _$TextFormStateEmpty();

  @override
  String toString() {
    return 'TextFormState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TextFormStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String text, String error) error,
    required TResult Function(String text) valid,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String text, String error)? error,
    TResult? Function(String text)? valid,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String text, String error)? error,
    TResult Function(String text)? valid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormStateEmpty value) empty,
    required TResult Function(TextFormStateError value) error,
    required TResult Function(TextFormStateValid value) valid,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormStateEmpty value)? empty,
    TResult? Function(TextFormStateError value)? error,
    TResult? Function(TextFormStateValid value)? valid,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormStateEmpty value)? empty,
    TResult Function(TextFormStateError value)? error,
    TResult Function(TextFormStateValid value)? valid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TextFormStateEmpty implements TextFormState {
  const factory TextFormStateEmpty() = _$TextFormStateEmpty;
}

/// @nodoc
abstract class _$$TextFormStateErrorCopyWith<$Res> {
  factory _$$TextFormStateErrorCopyWith(_$TextFormStateError value,
          $Res Function(_$TextFormStateError) then) =
      __$$TextFormStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String error});
}

/// @nodoc
class __$$TextFormStateErrorCopyWithImpl<$Res>
    extends _$TextFormStateCopyWithImpl<$Res, _$TextFormStateError>
    implements _$$TextFormStateErrorCopyWith<$Res> {
  __$$TextFormStateErrorCopyWithImpl(
      _$TextFormStateError _value, $Res Function(_$TextFormStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? error = null,
  }) {
    return _then(_$TextFormStateError(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextFormStateError implements TextFormStateError {
  const _$TextFormStateError(this.text, this.error);

  @override
  final String text;
  @override
  final String error;

  @override
  String toString() {
    return 'TextFormState.error(text: $text, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFormStateError &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFormStateErrorCopyWith<_$TextFormStateError> get copyWith =>
      __$$TextFormStateErrorCopyWithImpl<_$TextFormStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String text, String error) error,
    required TResult Function(String text) valid,
  }) {
    return error(text, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String text, String error)? error,
    TResult? Function(String text)? valid,
  }) {
    return error?.call(text, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String text, String error)? error,
    TResult Function(String text)? valid,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(text, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormStateEmpty value) empty,
    required TResult Function(TextFormStateError value) error,
    required TResult Function(TextFormStateValid value) valid,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormStateEmpty value)? empty,
    TResult? Function(TextFormStateError value)? error,
    TResult? Function(TextFormStateValid value)? valid,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormStateEmpty value)? empty,
    TResult Function(TextFormStateError value)? error,
    TResult Function(TextFormStateValid value)? valid,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TextFormStateError implements TextFormState {
  const factory TextFormStateError(final String text, final String error) =
      _$TextFormStateError;

  String get text;
  String get error;
  @JsonKey(ignore: true)
  _$$TextFormStateErrorCopyWith<_$TextFormStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextFormStateValidCopyWith<$Res> {
  factory _$$TextFormStateValidCopyWith(_$TextFormStateValid value,
          $Res Function(_$TextFormStateValid) then) =
      __$$TextFormStateValidCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextFormStateValidCopyWithImpl<$Res>
    extends _$TextFormStateCopyWithImpl<$Res, _$TextFormStateValid>
    implements _$$TextFormStateValidCopyWith<$Res> {
  __$$TextFormStateValidCopyWithImpl(
      _$TextFormStateValid _value, $Res Function(_$TextFormStateValid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TextFormStateValid(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextFormStateValid implements TextFormStateValid {
  const _$TextFormStateValid(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TextFormState.valid(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFormStateValid &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFormStateValidCopyWith<_$TextFormStateValid> get copyWith =>
      __$$TextFormStateValidCopyWithImpl<_$TextFormStateValid>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String text, String error) error,
    required TResult Function(String text) valid,
  }) {
    return valid(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String text, String error)? error,
    TResult? Function(String text)? valid,
  }) {
    return valid?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String text, String error)? error,
    TResult Function(String text)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormStateEmpty value) empty,
    required TResult Function(TextFormStateError value) error,
    required TResult Function(TextFormStateValid value) valid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormStateEmpty value)? empty,
    TResult? Function(TextFormStateError value)? error,
    TResult? Function(TextFormStateValid value)? valid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormStateEmpty value)? empty,
    TResult Function(TextFormStateError value)? error,
    TResult Function(TextFormStateValid value)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class TextFormStateValid implements TextFormState {
  const factory TextFormStateValid(final String text) = _$TextFormStateValid;

  String get text;
  @JsonKey(ignore: true)
  _$$TextFormStateValidCopyWith<_$TextFormStateValid> get copyWith =>
      throw _privateConstructorUsedError;
}
