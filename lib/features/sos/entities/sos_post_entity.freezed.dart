// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sos_post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SosPostEntity {
  String get title => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  List<MediaImageEntity> get mediaList => throw _privateConstructorUsedError;
  List<SosConditionEntity> get conditionList =>
      throw _privateConstructorUsedError;
  DateTime get careStartAt => throw _privateConstructorUsedError;
  DateTime get careEndAt => throw _privateConstructorUsedError;
  String get reward => throw _privateConstructorUsedError;
  String get rewardPer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SosPostEntityCopyWith<SosPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SosPostEntityCopyWith<$Res> {
  factory $SosPostEntityCopyWith(
          SosPostEntity value, $Res Function(SosPostEntity) then) =
      _$SosPostEntityCopyWithImpl<$Res, SosPostEntity>;
  @useResult
  $Res call(
      {String title,
      String thumbnailUrl,
      List<MediaImageEntity> mediaList,
      List<SosConditionEntity> conditionList,
      DateTime careStartAt,
      DateTime careEndAt,
      String reward,
      String rewardPer});
}

/// @nodoc
class _$SosPostEntityCopyWithImpl<$Res, $Val extends SosPostEntity>
    implements $SosPostEntityCopyWith<$Res> {
  _$SosPostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? mediaList = null,
    Object? conditionList = null,
    Object? careStartAt = null,
    Object? careEndAt = null,
    Object? reward = null,
    Object? rewardPer = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaList: null == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<MediaImageEntity>,
      conditionList: null == conditionList
          ? _value.conditionList
          : conditionList // ignore: cast_nullable_to_non_nullable
              as List<SosConditionEntity>,
      careStartAt: null == careStartAt
          ? _value.careStartAt
          : careStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      careEndAt: null == careEndAt
          ? _value.careEndAt
          : careEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPer: null == rewardPer
          ? _value.rewardPer
          : rewardPer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SosPostEntityCopyWith<$Res>
    implements $SosPostEntityCopyWith<$Res> {
  factory _$$_SosPostEntityCopyWith(
          _$_SosPostEntity value, $Res Function(_$_SosPostEntity) then) =
      __$$_SosPostEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String thumbnailUrl,
      List<MediaImageEntity> mediaList,
      List<SosConditionEntity> conditionList,
      DateTime careStartAt,
      DateTime careEndAt,
      String reward,
      String rewardPer});
}

/// @nodoc
class __$$_SosPostEntityCopyWithImpl<$Res>
    extends _$SosPostEntityCopyWithImpl<$Res, _$_SosPostEntity>
    implements _$$_SosPostEntityCopyWith<$Res> {
  __$$_SosPostEntityCopyWithImpl(
      _$_SosPostEntity _value, $Res Function(_$_SosPostEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? mediaList = null,
    Object? conditionList = null,
    Object? careStartAt = null,
    Object? careEndAt = null,
    Object? reward = null,
    Object? rewardPer = null,
  }) {
    return _then(_$_SosPostEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaList: null == mediaList
          ? _value._mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<MediaImageEntity>,
      conditionList: null == conditionList
          ? _value._conditionList
          : conditionList // ignore: cast_nullable_to_non_nullable
              as List<SosConditionEntity>,
      careStartAt: null == careStartAt
          ? _value.careStartAt
          : careStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      careEndAt: null == careEndAt
          ? _value.careEndAt
          : careEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPer: null == rewardPer
          ? _value.rewardPer
          : rewardPer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SosPostEntity extends _SosPostEntity {
  const _$_SosPostEntity(
      {required this.title,
      required this.thumbnailUrl,
      required final List<MediaImageEntity> mediaList,
      required final List<SosConditionEntity> conditionList,
      required this.careStartAt,
      required this.careEndAt,
      required this.reward,
      required this.rewardPer})
      : _mediaList = mediaList,
        _conditionList = conditionList,
        super._();

  @override
  final String title;
  @override
  final String thumbnailUrl;
  final List<MediaImageEntity> _mediaList;
  @override
  List<MediaImageEntity> get mediaList {
    if (_mediaList is EqualUnmodifiableListView) return _mediaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaList);
  }

  final List<SosConditionEntity> _conditionList;
  @override
  List<SosConditionEntity> get conditionList {
    if (_conditionList is EqualUnmodifiableListView) return _conditionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditionList);
  }

  @override
  final DateTime careStartAt;
  @override
  final DateTime careEndAt;
  @override
  final String reward;
  @override
  final String rewardPer;

  @override
  String toString() {
    return 'SosPostEntity(title: $title, thumbnailUrl: $thumbnailUrl, mediaList: $mediaList, conditionList: $conditionList, careStartAt: $careStartAt, careEndAt: $careEndAt, reward: $reward, rewardPer: $rewardPer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SosPostEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other._mediaList, _mediaList) &&
            const DeepCollectionEquality()
                .equals(other._conditionList, _conditionList) &&
            (identical(other.careStartAt, careStartAt) ||
                other.careStartAt == careStartAt) &&
            (identical(other.careEndAt, careEndAt) ||
                other.careEndAt == careEndAt) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.rewardPer, rewardPer) ||
                other.rewardPer == rewardPer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_mediaList),
      const DeepCollectionEquality().hash(_conditionList),
      careStartAt,
      careEndAt,
      reward,
      rewardPer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SosPostEntityCopyWith<_$_SosPostEntity> get copyWith =>
      __$$_SosPostEntityCopyWithImpl<_$_SosPostEntity>(this, _$identity);
}

abstract class _SosPostEntity extends SosPostEntity {
  const factory _SosPostEntity(
      {required final String title,
      required final String thumbnailUrl,
      required final List<MediaImageEntity> mediaList,
      required final List<SosConditionEntity> conditionList,
      required final DateTime careStartAt,
      required final DateTime careEndAt,
      required final String reward,
      required final String rewardPer}) = _$_SosPostEntity;
  const _SosPostEntity._() : super._();

  @override
  String get title;
  @override
  String get thumbnailUrl;
  @override
  List<MediaImageEntity> get mediaList;
  @override
  List<SosConditionEntity> get conditionList;
  @override
  DateTime get careStartAt;
  @override
  DateTime get careEndAt;
  @override
  String get reward;
  @override
  String get rewardPer;
  @override
  @JsonKey(ignore: true)
  _$$_SosPostEntityCopyWith<_$_SosPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
