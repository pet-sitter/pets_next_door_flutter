// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaImageEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  AppMediaType get mediaType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaImageEntityCopyWith<MediaImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaImageEntityCopyWith<$Res> {
  factory $MediaImageEntityCopyWith(
          MediaImageEntity value, $Res Function(MediaImageEntity) then) =
      _$MediaImageEntityCopyWithImpl<$Res, MediaImageEntity>;
  @useResult
  $Res call({int id, DateTime createdAt, AppMediaType mediaType, String url});
}

/// @nodoc
class _$MediaImageEntityCopyWithImpl<$Res, $Val extends MediaImageEntity>
    implements $MediaImageEntityCopyWith<$Res> {
  _$MediaImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? mediaType = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as AppMediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaImageEntityCopyWith<$Res>
    implements $MediaImageEntityCopyWith<$Res> {
  factory _$$_MediaImageEntityCopyWith(
          _$_MediaImageEntity value, $Res Function(_$_MediaImageEntity) then) =
      __$$_MediaImageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime createdAt, AppMediaType mediaType, String url});
}

/// @nodoc
class __$$_MediaImageEntityCopyWithImpl<$Res>
    extends _$MediaImageEntityCopyWithImpl<$Res, _$_MediaImageEntity>
    implements _$$_MediaImageEntityCopyWith<$Res> {
  __$$_MediaImageEntityCopyWithImpl(
      _$_MediaImageEntity _value, $Res Function(_$_MediaImageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? mediaType = null,
    Object? url = null,
  }) {
    return _then(_$_MediaImageEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as AppMediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaImageEntity extends _MediaImageEntity {
  const _$_MediaImageEntity(
      {required this.id,
      required this.createdAt,
      required this.mediaType,
      required this.url})
      : super._();

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final AppMediaType mediaType;
  @override
  final String url;

  @override
  String toString() {
    return 'MediaImageEntity(id: $id, createdAt: $createdAt, mediaType: $mediaType, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaImageEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, mediaType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaImageEntityCopyWith<_$_MediaImageEntity> get copyWith =>
      __$$_MediaImageEntityCopyWithImpl<_$_MediaImageEntity>(this, _$identity);
}

abstract class _MediaImageEntity extends MediaImageEntity {
  const factory _MediaImageEntity(
      {required final int id,
      required final DateTime createdAt,
      required final AppMediaType mediaType,
      required final String url}) = _$_MediaImageEntity;
  const _MediaImageEntity._() : super._();

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  AppMediaType get mediaType;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MediaImageEntityCopyWith<_$_MediaImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
