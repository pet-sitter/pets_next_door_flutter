// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) network,
    required TResult Function(File? file) file,
    required TResult Function(String? path) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? network,
    TResult? Function(File? file)? file,
    TResult? Function(String? path)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? network,
    TResult Function(File? file)? file,
    TResult Function(String? path)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTypeNetwork value) network,
    required TResult Function(ImageTypeFile value) file,
    required TResult Function(ImageTypeAsset value) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTypeNetwork value)? network,
    TResult? Function(ImageTypeFile value)? file,
    TResult? Function(ImageTypeAsset value)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTypeNetwork value)? network,
    TResult Function(ImageTypeFile value)? file,
    TResult Function(ImageTypeAsset value)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTypeCopyWith<$Res> {
  factory $ImageTypeCopyWith(ImageType value, $Res Function(ImageType) then) =
      _$ImageTypeCopyWithImpl<$Res, ImageType>;
}

/// @nodoc
class _$ImageTypeCopyWithImpl<$Res, $Val extends ImageType>
    implements $ImageTypeCopyWith<$Res> {
  _$ImageTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageTypeNetworkCopyWith<$Res> {
  factory _$$ImageTypeNetworkCopyWith(
          _$ImageTypeNetwork value, $Res Function(_$ImageTypeNetwork) then) =
      __$$ImageTypeNetworkCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$ImageTypeNetworkCopyWithImpl<$Res>
    extends _$ImageTypeCopyWithImpl<$Res, _$ImageTypeNetwork>
    implements _$$ImageTypeNetworkCopyWith<$Res> {
  __$$ImageTypeNetworkCopyWithImpl(
      _$ImageTypeNetwork _value, $Res Function(_$ImageTypeNetwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$ImageTypeNetwork(
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageTypeNetwork implements ImageTypeNetwork {
  const _$ImageTypeNetwork(this.url);

  @override
  final String? url;

  @override
  String toString() {
    return 'ImageType.network(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTypeNetwork &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTypeNetworkCopyWith<_$ImageTypeNetwork> get copyWith =>
      __$$ImageTypeNetworkCopyWithImpl<_$ImageTypeNetwork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) network,
    required TResult Function(File? file) file,
    required TResult Function(String? path) asset,
  }) {
    return network(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? network,
    TResult? Function(File? file)? file,
    TResult? Function(String? path)? asset,
  }) {
    return network?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? network,
    TResult Function(File? file)? file,
    TResult Function(String? path)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTypeNetwork value) network,
    required TResult Function(ImageTypeFile value) file,
    required TResult Function(ImageTypeAsset value) asset,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTypeNetwork value)? network,
    TResult? Function(ImageTypeFile value)? file,
    TResult? Function(ImageTypeAsset value)? asset,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTypeNetwork value)? network,
    TResult Function(ImageTypeFile value)? file,
    TResult Function(ImageTypeAsset value)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class ImageTypeNetwork implements ImageType {
  const factory ImageTypeNetwork(final String? url) = _$ImageTypeNetwork;

  String? get url;
  @JsonKey(ignore: true)
  _$$ImageTypeNetworkCopyWith<_$ImageTypeNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTypeFileCopyWith<$Res> {
  factory _$$ImageTypeFileCopyWith(
          _$ImageTypeFile value, $Res Function(_$ImageTypeFile) then) =
      __$$ImageTypeFileCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$ImageTypeFileCopyWithImpl<$Res>
    extends _$ImageTypeCopyWithImpl<$Res, _$ImageTypeFile>
    implements _$$ImageTypeFileCopyWith<$Res> {
  __$$ImageTypeFileCopyWithImpl(
      _$ImageTypeFile _value, $Res Function(_$ImageTypeFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$ImageTypeFile(
      freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ImageTypeFile implements ImageTypeFile {
  const _$ImageTypeFile(this.file);

  @override
  final File? file;

  @override
  String toString() {
    return 'ImageType.file(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTypeFile &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTypeFileCopyWith<_$ImageTypeFile> get copyWith =>
      __$$ImageTypeFileCopyWithImpl<_$ImageTypeFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) network,
    required TResult Function(File? file) file,
    required TResult Function(String? path) asset,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? network,
    TResult? Function(File? file)? file,
    TResult? Function(String? path)? asset,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? network,
    TResult Function(File? file)? file,
    TResult Function(String? path)? asset,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTypeNetwork value) network,
    required TResult Function(ImageTypeFile value) file,
    required TResult Function(ImageTypeAsset value) asset,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTypeNetwork value)? network,
    TResult? Function(ImageTypeFile value)? file,
    TResult? Function(ImageTypeAsset value)? asset,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTypeNetwork value)? network,
    TResult Function(ImageTypeFile value)? file,
    TResult Function(ImageTypeAsset value)? asset,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class ImageTypeFile implements ImageType {
  const factory ImageTypeFile(final File? file) = _$ImageTypeFile;

  File? get file;
  @JsonKey(ignore: true)
  _$$ImageTypeFileCopyWith<_$ImageTypeFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTypeAssetCopyWith<$Res> {
  factory _$$ImageTypeAssetCopyWith(
          _$ImageTypeAsset value, $Res Function(_$ImageTypeAsset) then) =
      __$$ImageTypeAssetCopyWithImpl<$Res>;
  @useResult
  $Res call({String? path});
}

/// @nodoc
class __$$ImageTypeAssetCopyWithImpl<$Res>
    extends _$ImageTypeCopyWithImpl<$Res, _$ImageTypeAsset>
    implements _$$ImageTypeAssetCopyWith<$Res> {
  __$$ImageTypeAssetCopyWithImpl(
      _$ImageTypeAsset _value, $Res Function(_$ImageTypeAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$ImageTypeAsset(
      freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageTypeAsset implements ImageTypeAsset {
  const _$ImageTypeAsset(this.path);

  @override
  final String? path;

  @override
  String toString() {
    return 'ImageType.asset(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTypeAsset &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTypeAssetCopyWith<_$ImageTypeAsset> get copyWith =>
      __$$ImageTypeAssetCopyWithImpl<_$ImageTypeAsset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) network,
    required TResult Function(File? file) file,
    required TResult Function(String? path) asset,
  }) {
    return asset(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? network,
    TResult? Function(File? file)? file,
    TResult? Function(String? path)? asset,
  }) {
    return asset?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? network,
    TResult Function(File? file)? file,
    TResult Function(String? path)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTypeNetwork value) network,
    required TResult Function(ImageTypeFile value) file,
    required TResult Function(ImageTypeAsset value) asset,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTypeNetwork value)? network,
    TResult? Function(ImageTypeFile value)? file,
    TResult? Function(ImageTypeAsset value)? asset,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTypeNetwork value)? network,
    TResult Function(ImageTypeFile value)? file,
    TResult Function(ImageTypeAsset value)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }
}

abstract class ImageTypeAsset implements ImageType {
  const factory ImageTypeAsset(final String? path) = _$ImageTypeAsset;

  String? get path;
  @JsonKey(ignore: true)
  _$$ImageTypeAssetCopyWith<_$ImageTypeAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
