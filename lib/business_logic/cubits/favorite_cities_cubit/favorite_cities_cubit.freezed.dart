// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_cities_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteCitiesState _$FavoriteCitiesStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'favoriteCitiesInitial':
      return FavoriteCitiesInitial.fromJson(json);
    case 'favoriteCitiesFetchInProgress':
      return FavoriteCitiesFetchInProgress.fromJson(json);
    case 'favoriteCitiesFetchSuccess':
      return FavoriteCitiesFetchSuccess.fromJson(json);
    case 'favoriteCitiesFetchFailure':
      return FavoriteCitiesFetchFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'FavoriteCitiesState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$FavoriteCitiesStateTearOff {
  const _$FavoriteCitiesStateTearOff();

  FavoriteCitiesInitial favoriteCitiesInitial() {
    return const FavoriteCitiesInitial();
  }

  FavoriteCitiesFetchInProgress favoriteCitiesFetchInProgress() {
    return const FavoriteCitiesFetchInProgress();
  }

  FavoriteCitiesFetchSuccess favoriteCitiesFetchSuccess(
      {required List<Weather> favoriteCitiesWeather}) {
    return FavoriteCitiesFetchSuccess(
      favoriteCitiesWeather: favoriteCitiesWeather,
    );
  }

  FavoriteCitiesFetchFailure favoriteCitiesFetchFailure(
      {required String error}) {
    return FavoriteCitiesFetchFailure(
      error: error,
    );
  }

  FavoriteCitiesState fromJson(Map<String, Object?> json) {
    return FavoriteCitiesState.fromJson(json);
  }
}

/// @nodoc
const $FavoriteCitiesState = _$FavoriteCitiesStateTearOff();

/// @nodoc
mixin _$FavoriteCitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoriteCitiesInitial,
    required TResult Function() favoriteCitiesFetchInProgress,
    required TResult Function(List<Weather> favoriteCitiesWeather)
        favoriteCitiesFetchSuccess,
    required TResult Function(String error) favoriteCitiesFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCitiesInitial value)
        favoriteCitiesInitial,
    required TResult Function(FavoriteCitiesFetchInProgress value)
        favoriteCitiesFetchInProgress,
    required TResult Function(FavoriteCitiesFetchSuccess value)
        favoriteCitiesFetchSuccess,
    required TResult Function(FavoriteCitiesFetchFailure value)
        favoriteCitiesFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCitiesStateCopyWith<$Res> {
  factory $FavoriteCitiesStateCopyWith(
          FavoriteCitiesState value, $Res Function(FavoriteCitiesState) then) =
      _$FavoriteCitiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteCitiesStateCopyWithImpl<$Res>
    implements $FavoriteCitiesStateCopyWith<$Res> {
  _$FavoriteCitiesStateCopyWithImpl(this._value, this._then);

  final FavoriteCitiesState _value;
  // ignore: unused_field
  final $Res Function(FavoriteCitiesState) _then;
}

/// @nodoc
abstract class $FavoriteCitiesInitialCopyWith<$Res> {
  factory $FavoriteCitiesInitialCopyWith(FavoriteCitiesInitial value,
          $Res Function(FavoriteCitiesInitial) then) =
      _$FavoriteCitiesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteCitiesInitialCopyWithImpl<$Res>
    extends _$FavoriteCitiesStateCopyWithImpl<$Res>
    implements $FavoriteCitiesInitialCopyWith<$Res> {
  _$FavoriteCitiesInitialCopyWithImpl(
      FavoriteCitiesInitial _value, $Res Function(FavoriteCitiesInitial) _then)
      : super(_value, (v) => _then(v as FavoriteCitiesInitial));

  @override
  FavoriteCitiesInitial get _value => super._value as FavoriteCitiesInitial;
}

/// @nodoc
@JsonSerializable()
class _$FavoriteCitiesInitial implements FavoriteCitiesInitial {
  const _$FavoriteCitiesInitial({String? $type})
      : $type = $type ?? 'favoriteCitiesInitial';

  factory _$FavoriteCitiesInitial.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCitiesInitialFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FavoriteCitiesState.favoriteCitiesInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoriteCitiesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoriteCitiesInitial,
    required TResult Function() favoriteCitiesFetchInProgress,
    required TResult Function(List<Weather> favoriteCitiesWeather)
        favoriteCitiesFetchSuccess,
    required TResult Function(String error) favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesInitial != null) {
      return favoriteCitiesInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCitiesInitial value)
        favoriteCitiesInitial,
    required TResult Function(FavoriteCitiesFetchInProgress value)
        favoriteCitiesFetchInProgress,
    required TResult Function(FavoriteCitiesFetchSuccess value)
        favoriteCitiesFetchSuccess,
    required TResult Function(FavoriteCitiesFetchFailure value)
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesInitial != null) {
      return favoriteCitiesInitial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCitiesInitialToJson(this);
  }
}

abstract class FavoriteCitiesInitial implements FavoriteCitiesState {
  const factory FavoriteCitiesInitial() = _$FavoriteCitiesInitial;

  factory FavoriteCitiesInitial.fromJson(Map<String, dynamic> json) =
      _$FavoriteCitiesInitial.fromJson;
}

/// @nodoc
abstract class $FavoriteCitiesFetchInProgressCopyWith<$Res> {
  factory $FavoriteCitiesFetchInProgressCopyWith(
          FavoriteCitiesFetchInProgress value,
          $Res Function(FavoriteCitiesFetchInProgress) then) =
      _$FavoriteCitiesFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteCitiesFetchInProgressCopyWithImpl<$Res>
    extends _$FavoriteCitiesStateCopyWithImpl<$Res>
    implements $FavoriteCitiesFetchInProgressCopyWith<$Res> {
  _$FavoriteCitiesFetchInProgressCopyWithImpl(
      FavoriteCitiesFetchInProgress _value,
      $Res Function(FavoriteCitiesFetchInProgress) _then)
      : super(_value, (v) => _then(v as FavoriteCitiesFetchInProgress));

  @override
  FavoriteCitiesFetchInProgress get _value =>
      super._value as FavoriteCitiesFetchInProgress;
}

/// @nodoc
@JsonSerializable()
class _$FavoriteCitiesFetchInProgress implements FavoriteCitiesFetchInProgress {
  const _$FavoriteCitiesFetchInProgress({String? $type})
      : $type = $type ?? 'favoriteCitiesFetchInProgress';

  factory _$FavoriteCitiesFetchInProgress.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCitiesFetchInProgressFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FavoriteCitiesState.favoriteCitiesFetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteCitiesFetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoriteCitiesInitial,
    required TResult Function() favoriteCitiesFetchInProgress,
    required TResult Function(List<Weather> favoriteCitiesWeather)
        favoriteCitiesFetchSuccess,
    required TResult Function(String error) favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchInProgress != null) {
      return favoriteCitiesFetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCitiesInitial value)
        favoriteCitiesInitial,
    required TResult Function(FavoriteCitiesFetchInProgress value)
        favoriteCitiesFetchInProgress,
    required TResult Function(FavoriteCitiesFetchSuccess value)
        favoriteCitiesFetchSuccess,
    required TResult Function(FavoriteCitiesFetchFailure value)
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchInProgress != null) {
      return favoriteCitiesFetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCitiesFetchInProgressToJson(this);
  }
}

abstract class FavoriteCitiesFetchInProgress implements FavoriteCitiesState {
  const factory FavoriteCitiesFetchInProgress() =
      _$FavoriteCitiesFetchInProgress;

  factory FavoriteCitiesFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$FavoriteCitiesFetchInProgress.fromJson;
}

/// @nodoc
abstract class $FavoriteCitiesFetchSuccessCopyWith<$Res> {
  factory $FavoriteCitiesFetchSuccessCopyWith(FavoriteCitiesFetchSuccess value,
          $Res Function(FavoriteCitiesFetchSuccess) then) =
      _$FavoriteCitiesFetchSuccessCopyWithImpl<$Res>;
  $Res call({List<Weather> favoriteCitiesWeather});
}

/// @nodoc
class _$FavoriteCitiesFetchSuccessCopyWithImpl<$Res>
    extends _$FavoriteCitiesStateCopyWithImpl<$Res>
    implements $FavoriteCitiesFetchSuccessCopyWith<$Res> {
  _$FavoriteCitiesFetchSuccessCopyWithImpl(FavoriteCitiesFetchSuccess _value,
      $Res Function(FavoriteCitiesFetchSuccess) _then)
      : super(_value, (v) => _then(v as FavoriteCitiesFetchSuccess));

  @override
  FavoriteCitiesFetchSuccess get _value =>
      super._value as FavoriteCitiesFetchSuccess;

  @override
  $Res call({
    Object? favoriteCitiesWeather = freezed,
  }) {
    return _then(FavoriteCitiesFetchSuccess(
      favoriteCitiesWeather: favoriteCitiesWeather == freezed
          ? _value.favoriteCitiesWeather
          : favoriteCitiesWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteCitiesFetchSuccess implements FavoriteCitiesFetchSuccess {
  const _$FavoriteCitiesFetchSuccess(
      {required this.favoriteCitiesWeather, String? $type})
      : $type = $type ?? 'favoriteCitiesFetchSuccess';

  factory _$FavoriteCitiesFetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCitiesFetchSuccessFromJson(json);

  @override
  final List<Weather> favoriteCitiesWeather;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FavoriteCitiesState.favoriteCitiesFetchSuccess(favoriteCitiesWeather: $favoriteCitiesWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteCitiesFetchSuccess &&
            const DeepCollectionEquality()
                .equals(other.favoriteCitiesWeather, favoriteCitiesWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(favoriteCitiesWeather));

  @JsonKey(ignore: true)
  @override
  $FavoriteCitiesFetchSuccessCopyWith<FavoriteCitiesFetchSuccess>
      get copyWith =>
          _$FavoriteCitiesFetchSuccessCopyWithImpl<FavoriteCitiesFetchSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoriteCitiesInitial,
    required TResult Function() favoriteCitiesFetchInProgress,
    required TResult Function(List<Weather> favoriteCitiesWeather)
        favoriteCitiesFetchSuccess,
    required TResult Function(String error) favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchSuccess(favoriteCitiesWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchSuccess?.call(favoriteCitiesWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchSuccess != null) {
      return favoriteCitiesFetchSuccess(favoriteCitiesWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCitiesInitial value)
        favoriteCitiesInitial,
    required TResult Function(FavoriteCitiesFetchInProgress value)
        favoriteCitiesFetchInProgress,
    required TResult Function(FavoriteCitiesFetchSuccess value)
        favoriteCitiesFetchSuccess,
    required TResult Function(FavoriteCitiesFetchFailure value)
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchSuccess != null) {
      return favoriteCitiesFetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCitiesFetchSuccessToJson(this);
  }
}

abstract class FavoriteCitiesFetchSuccess implements FavoriteCitiesState {
  const factory FavoriteCitiesFetchSuccess(
          {required List<Weather> favoriteCitiesWeather}) =
      _$FavoriteCitiesFetchSuccess;

  factory FavoriteCitiesFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$FavoriteCitiesFetchSuccess.fromJson;

  List<Weather> get favoriteCitiesWeather;
  @JsonKey(ignore: true)
  $FavoriteCitiesFetchSuccessCopyWith<FavoriteCitiesFetchSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCitiesFetchFailureCopyWith<$Res> {
  factory $FavoriteCitiesFetchFailureCopyWith(FavoriteCitiesFetchFailure value,
          $Res Function(FavoriteCitiesFetchFailure) then) =
      _$FavoriteCitiesFetchFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$FavoriteCitiesFetchFailureCopyWithImpl<$Res>
    extends _$FavoriteCitiesStateCopyWithImpl<$Res>
    implements $FavoriteCitiesFetchFailureCopyWith<$Res> {
  _$FavoriteCitiesFetchFailureCopyWithImpl(FavoriteCitiesFetchFailure _value,
      $Res Function(FavoriteCitiesFetchFailure) _then)
      : super(_value, (v) => _then(v as FavoriteCitiesFetchFailure));

  @override
  FavoriteCitiesFetchFailure get _value =>
      super._value as FavoriteCitiesFetchFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FavoriteCitiesFetchFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteCitiesFetchFailure implements FavoriteCitiesFetchFailure {
  const _$FavoriteCitiesFetchFailure({required this.error, String? $type})
      : $type = $type ?? 'favoriteCitiesFetchFailure';

  factory _$FavoriteCitiesFetchFailure.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCitiesFetchFailureFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FavoriteCitiesState.favoriteCitiesFetchFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteCitiesFetchFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $FavoriteCitiesFetchFailureCopyWith<FavoriteCitiesFetchFailure>
      get copyWith =>
          _$FavoriteCitiesFetchFailureCopyWithImpl<FavoriteCitiesFetchFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoriteCitiesInitial,
    required TResult Function() favoriteCitiesFetchInProgress,
    required TResult Function(List<Weather> favoriteCitiesWeather)
        favoriteCitiesFetchSuccess,
    required TResult Function(String error) favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoriteCitiesInitial,
    TResult Function()? favoriteCitiesFetchInProgress,
    TResult Function(List<Weather> favoriteCitiesWeather)?
        favoriteCitiesFetchSuccess,
    TResult Function(String error)? favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchFailure != null) {
      return favoriteCitiesFetchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCitiesInitial value)
        favoriteCitiesInitial,
    required TResult Function(FavoriteCitiesFetchInProgress value)
        favoriteCitiesFetchInProgress,
    required TResult Function(FavoriteCitiesFetchSuccess value)
        favoriteCitiesFetchSuccess,
    required TResult Function(FavoriteCitiesFetchFailure value)
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
  }) {
    return favoriteCitiesFetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCitiesInitial value)? favoriteCitiesInitial,
    TResult Function(FavoriteCitiesFetchInProgress value)?
        favoriteCitiesFetchInProgress,
    TResult Function(FavoriteCitiesFetchSuccess value)?
        favoriteCitiesFetchSuccess,
    TResult Function(FavoriteCitiesFetchFailure value)?
        favoriteCitiesFetchFailure,
    required TResult orElse(),
  }) {
    if (favoriteCitiesFetchFailure != null) {
      return favoriteCitiesFetchFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCitiesFetchFailureToJson(this);
  }
}

abstract class FavoriteCitiesFetchFailure implements FavoriteCitiesState {
  const factory FavoriteCitiesFetchFailure({required String error}) =
      _$FavoriteCitiesFetchFailure;

  factory FavoriteCitiesFetchFailure.fromJson(Map<String, dynamic> json) =
      _$FavoriteCitiesFetchFailure.fromJson;

  String get error;
  @JsonKey(ignore: true)
  $FavoriteCitiesFetchFailureCopyWith<FavoriteCitiesFetchFailure>
      get copyWith => throw _privateConstructorUsedError;
}
