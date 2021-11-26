// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  CityWeatherRequested cityWeatherRequested({required String cityName}) {
    return CityWeatherRequested(
      cityName: cityName,
    );
  }

  LocationWeatherRequested locationWeatherRequested() {
    return const LocationWeatherRequested();
  }

  FavoriteCityWeatherRequested favoriteCityWeatherRequested(
      {required Weather weather}) {
    return FavoriteCityWeatherRequested(
      weather: weather,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityWeatherRequested,
    required TResult Function() locationWeatherRequested,
    required TResult Function(Weather weather) favoriteCityWeatherRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityWeatherRequested value) cityWeatherRequested,
    required TResult Function(LocationWeatherRequested value)
        locationWeatherRequested,
    required TResult Function(FavoriteCityWeatherRequested value)
        favoriteCityWeatherRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class $CityWeatherRequestedCopyWith<$Res> {
  factory $CityWeatherRequestedCopyWith(CityWeatherRequested value,
          $Res Function(CityWeatherRequested) then) =
      _$CityWeatherRequestedCopyWithImpl<$Res>;
  $Res call({String cityName});
}

/// @nodoc
class _$CityWeatherRequestedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $CityWeatherRequestedCopyWith<$Res> {
  _$CityWeatherRequestedCopyWithImpl(
      CityWeatherRequested _value, $Res Function(CityWeatherRequested) _then)
      : super(_value, (v) => _then(v as CityWeatherRequested));

  @override
  CityWeatherRequested get _value => super._value as CityWeatherRequested;

  @override
  $Res call({
    Object? cityName = freezed,
  }) {
    return _then(CityWeatherRequested(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CityWeatherRequested implements CityWeatherRequested {
  const _$CityWeatherRequested({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherEvent.cityWeatherRequested(cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityWeatherRequested &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  $CityWeatherRequestedCopyWith<CityWeatherRequested> get copyWith =>
      _$CityWeatherRequestedCopyWithImpl<CityWeatherRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityWeatherRequested,
    required TResult Function() locationWeatherRequested,
    required TResult Function(Weather weather) favoriteCityWeatherRequested,
  }) {
    return cityWeatherRequested(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
  }) {
    return cityWeatherRequested?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (cityWeatherRequested != null) {
      return cityWeatherRequested(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityWeatherRequested value) cityWeatherRequested,
    required TResult Function(LocationWeatherRequested value)
        locationWeatherRequested,
    required TResult Function(FavoriteCityWeatherRequested value)
        favoriteCityWeatherRequested,
  }) {
    return cityWeatherRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
  }) {
    return cityWeatherRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (cityWeatherRequested != null) {
      return cityWeatherRequested(this);
    }
    return orElse();
  }
}

abstract class CityWeatherRequested implements WeatherEvent {
  const factory CityWeatherRequested({required String cityName}) =
      _$CityWeatherRequested;

  String get cityName;
  @JsonKey(ignore: true)
  $CityWeatherRequestedCopyWith<CityWeatherRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationWeatherRequestedCopyWith<$Res> {
  factory $LocationWeatherRequestedCopyWith(LocationWeatherRequested value,
          $Res Function(LocationWeatherRequested) then) =
      _$LocationWeatherRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationWeatherRequestedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $LocationWeatherRequestedCopyWith<$Res> {
  _$LocationWeatherRequestedCopyWithImpl(LocationWeatherRequested _value,
      $Res Function(LocationWeatherRequested) _then)
      : super(_value, (v) => _then(v as LocationWeatherRequested));

  @override
  LocationWeatherRequested get _value =>
      super._value as LocationWeatherRequested;
}

/// @nodoc

class _$LocationWeatherRequested implements LocationWeatherRequested {
  const _$LocationWeatherRequested();

  @override
  String toString() {
    return 'WeatherEvent.locationWeatherRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationWeatherRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityWeatherRequested,
    required TResult Function() locationWeatherRequested,
    required TResult Function(Weather weather) favoriteCityWeatherRequested,
  }) {
    return locationWeatherRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
  }) {
    return locationWeatherRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (locationWeatherRequested != null) {
      return locationWeatherRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityWeatherRequested value) cityWeatherRequested,
    required TResult Function(LocationWeatherRequested value)
        locationWeatherRequested,
    required TResult Function(FavoriteCityWeatherRequested value)
        favoriteCityWeatherRequested,
  }) {
    return locationWeatherRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
  }) {
    return locationWeatherRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (locationWeatherRequested != null) {
      return locationWeatherRequested(this);
    }
    return orElse();
  }
}

abstract class LocationWeatherRequested implements WeatherEvent {
  const factory LocationWeatherRequested() = _$LocationWeatherRequested;
}

/// @nodoc
abstract class $FavoriteCityWeatherRequestedCopyWith<$Res> {
  factory $FavoriteCityWeatherRequestedCopyWith(
          FavoriteCityWeatherRequested value,
          $Res Function(FavoriteCityWeatherRequested) then) =
      _$FavoriteCityWeatherRequestedCopyWithImpl<$Res>;
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$FavoriteCityWeatherRequestedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $FavoriteCityWeatherRequestedCopyWith<$Res> {
  _$FavoriteCityWeatherRequestedCopyWithImpl(
      FavoriteCityWeatherRequested _value,
      $Res Function(FavoriteCityWeatherRequested) _then)
      : super(_value, (v) => _then(v as FavoriteCityWeatherRequested));

  @override
  FavoriteCityWeatherRequested get _value =>
      super._value as FavoriteCityWeatherRequested;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(FavoriteCityWeatherRequested(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$FavoriteCityWeatherRequested implements FavoriteCityWeatherRequested {
  const _$FavoriteCityWeatherRequested({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherEvent.favoriteCityWeatherRequested(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteCityWeatherRequested &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  $FavoriteCityWeatherRequestedCopyWith<FavoriteCityWeatherRequested>
      get copyWith => _$FavoriteCityWeatherRequestedCopyWithImpl<
          FavoriteCityWeatherRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityWeatherRequested,
    required TResult Function() locationWeatherRequested,
    required TResult Function(Weather weather) favoriteCityWeatherRequested,
  }) {
    return favoriteCityWeatherRequested(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
  }) {
    return favoriteCityWeatherRequested?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityWeatherRequested,
    TResult Function()? locationWeatherRequested,
    TResult Function(Weather weather)? favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (favoriteCityWeatherRequested != null) {
      return favoriteCityWeatherRequested(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityWeatherRequested value) cityWeatherRequested,
    required TResult Function(LocationWeatherRequested value)
        locationWeatherRequested,
    required TResult Function(FavoriteCityWeatherRequested value)
        favoriteCityWeatherRequested,
  }) {
    return favoriteCityWeatherRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
  }) {
    return favoriteCityWeatherRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityWeatherRequested value)? cityWeatherRequested,
    TResult Function(LocationWeatherRequested value)? locationWeatherRequested,
    TResult Function(FavoriteCityWeatherRequested value)?
        favoriteCityWeatherRequested,
    required TResult orElse(),
  }) {
    if (favoriteCityWeatherRequested != null) {
      return favoriteCityWeatherRequested(this);
    }
    return orElse();
  }
}

abstract class FavoriteCityWeatherRequested implements WeatherEvent {
  const factory FavoriteCityWeatherRequested({required Weather weather}) =
      _$FavoriteCityWeatherRequested;

  Weather get weather;
  @JsonKey(ignore: true)
  $FavoriteCityWeatherRequestedCopyWith<FavoriteCityWeatherRequested>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'weatherFetchSuccess':
      return WeatherFetchSuccess.fromJson(json);
    case 'weatherLocalisationFetchInProgress':
      return WeatherLocalisationFetchInProgress.fromJson(json);
    case 'weatherFetchInProgress':
      return WeatherFetchInProgress.fromJson(json);
    case 'weatherFetchFailure':
      return WeatherFetchFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'WeatherState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  WeatherFetchSuccess weatherFetchSuccess({required Weather weather}) {
    return WeatherFetchSuccess(
      weather: weather,
    );
  }

  WeatherLocalisationFetchInProgress weatherLocalisationFetchInProgress() {
    return const WeatherLocalisationFetchInProgress();
  }

  WeatherFetchInProgress weatherFetchInProgress({required String cityName}) {
    return WeatherFetchInProgress(
      cityName: cityName,
    );
  }

  WeatherFetchFailure weatherFetchFailure({required Object error}) {
    return WeatherFetchFailure(
      error: error,
    );
  }

  WeatherState fromJson(Map<String, Object?> json) {
    return WeatherState.fromJson(json);
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherFetchSuccess,
    required TResult Function() weatherLocalisationFetchInProgress,
    required TResult Function(String cityName) weatherFetchInProgress,
    required TResult Function(Object error) weatherFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchSuccess value) weatherFetchSuccess,
    required TResult Function(WeatherLocalisationFetchInProgress value)
        weatherLocalisationFetchInProgress,
    required TResult Function(WeatherFetchInProgress value)
        weatherFetchInProgress,
    required TResult Function(WeatherFetchFailure value) weatherFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class $WeatherFetchSuccessCopyWith<$Res> {
  factory $WeatherFetchSuccessCopyWith(
          WeatherFetchSuccess value, $Res Function(WeatherFetchSuccess) then) =
      _$WeatherFetchSuccessCopyWithImpl<$Res>;
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherFetchSuccessCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherFetchSuccessCopyWith<$Res> {
  _$WeatherFetchSuccessCopyWithImpl(
      WeatherFetchSuccess _value, $Res Function(WeatherFetchSuccess) _then)
      : super(_value, (v) => _then(v as WeatherFetchSuccess));

  @override
  WeatherFetchSuccess get _value => super._value as WeatherFetchSuccess;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(WeatherFetchSuccess(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherFetchSuccess implements WeatherFetchSuccess {
  const _$WeatherFetchSuccess({required this.weather, String? $type})
      : $type = $type ?? 'weatherFetchSuccess';

  factory _$WeatherFetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$WeatherFetchSuccessFromJson(json);

  @override
  final Weather weather;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.weatherFetchSuccess(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherFetchSuccess &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  $WeatherFetchSuccessCopyWith<WeatherFetchSuccess> get copyWith =>
      _$WeatherFetchSuccessCopyWithImpl<WeatherFetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherFetchSuccess,
    required TResult Function() weatherLocalisationFetchInProgress,
    required TResult Function(String cityName) weatherFetchInProgress,
    required TResult Function(Object error) weatherFetchFailure,
  }) {
    return weatherFetchSuccess(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
  }) {
    return weatherFetchSuccess?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchSuccess != null) {
      return weatherFetchSuccess(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchSuccess value) weatherFetchSuccess,
    required TResult Function(WeatherLocalisationFetchInProgress value)
        weatherLocalisationFetchInProgress,
    required TResult Function(WeatherFetchInProgress value)
        weatherFetchInProgress,
    required TResult Function(WeatherFetchFailure value) weatherFetchFailure,
  }) {
    return weatherFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
  }) {
    return weatherFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchSuccess != null) {
      return weatherFetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherFetchSuccessToJson(this);
  }
}

abstract class WeatherFetchSuccess implements WeatherState {
  const factory WeatherFetchSuccess({required Weather weather}) =
      _$WeatherFetchSuccess;

  factory WeatherFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$WeatherFetchSuccess.fromJson;

  Weather get weather;
  @JsonKey(ignore: true)
  $WeatherFetchSuccessCopyWith<WeatherFetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherLocalisationFetchInProgressCopyWith<$Res> {
  factory $WeatherLocalisationFetchInProgressCopyWith(
          WeatherLocalisationFetchInProgress value,
          $Res Function(WeatherLocalisationFetchInProgress) then) =
      _$WeatherLocalisationFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherLocalisationFetchInProgressCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherLocalisationFetchInProgressCopyWith<$Res> {
  _$WeatherLocalisationFetchInProgressCopyWithImpl(
      WeatherLocalisationFetchInProgress _value,
      $Res Function(WeatherLocalisationFetchInProgress) _then)
      : super(_value, (v) => _then(v as WeatherLocalisationFetchInProgress));

  @override
  WeatherLocalisationFetchInProgress get _value =>
      super._value as WeatherLocalisationFetchInProgress;
}

/// @nodoc
@JsonSerializable()
class _$WeatherLocalisationFetchInProgress
    implements WeatherLocalisationFetchInProgress {
  const _$WeatherLocalisationFetchInProgress({String? $type})
      : $type = $type ?? 'weatherLocalisationFetchInProgress';

  factory _$WeatherLocalisationFetchInProgress.fromJson(
          Map<String, dynamic> json) =>
      _$$WeatherLocalisationFetchInProgressFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.weatherLocalisationFetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherLocalisationFetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherFetchSuccess,
    required TResult Function() weatherLocalisationFetchInProgress,
    required TResult Function(String cityName) weatherFetchInProgress,
    required TResult Function(Object error) weatherFetchFailure,
  }) {
    return weatherLocalisationFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
  }) {
    return weatherLocalisationFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherLocalisationFetchInProgress != null) {
      return weatherLocalisationFetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchSuccess value) weatherFetchSuccess,
    required TResult Function(WeatherLocalisationFetchInProgress value)
        weatherLocalisationFetchInProgress,
    required TResult Function(WeatherFetchInProgress value)
        weatherFetchInProgress,
    required TResult Function(WeatherFetchFailure value) weatherFetchFailure,
  }) {
    return weatherLocalisationFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
  }) {
    return weatherLocalisationFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherLocalisationFetchInProgress != null) {
      return weatherLocalisationFetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherLocalisationFetchInProgressToJson(this);
  }
}

abstract class WeatherLocalisationFetchInProgress implements WeatherState {
  const factory WeatherLocalisationFetchInProgress() =
      _$WeatherLocalisationFetchInProgress;

  factory WeatherLocalisationFetchInProgress.fromJson(
          Map<String, dynamic> json) =
      _$WeatherLocalisationFetchInProgress.fromJson;
}

/// @nodoc
abstract class $WeatherFetchInProgressCopyWith<$Res> {
  factory $WeatherFetchInProgressCopyWith(WeatherFetchInProgress value,
          $Res Function(WeatherFetchInProgress) then) =
      _$WeatherFetchInProgressCopyWithImpl<$Res>;
  $Res call({String cityName});
}

/// @nodoc
class _$WeatherFetchInProgressCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherFetchInProgressCopyWith<$Res> {
  _$WeatherFetchInProgressCopyWithImpl(WeatherFetchInProgress _value,
      $Res Function(WeatherFetchInProgress) _then)
      : super(_value, (v) => _then(v as WeatherFetchInProgress));

  @override
  WeatherFetchInProgress get _value => super._value as WeatherFetchInProgress;

  @override
  $Res call({
    Object? cityName = freezed,
  }) {
    return _then(WeatherFetchInProgress(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherFetchInProgress implements WeatherFetchInProgress {
  const _$WeatherFetchInProgress({required this.cityName, String? $type})
      : $type = $type ?? 'weatherFetchInProgress';

  factory _$WeatherFetchInProgress.fromJson(Map<String, dynamic> json) =>
      _$$WeatherFetchInProgressFromJson(json);

  @override
  final String cityName;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.weatherFetchInProgress(cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherFetchInProgress &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  $WeatherFetchInProgressCopyWith<WeatherFetchInProgress> get copyWith =>
      _$WeatherFetchInProgressCopyWithImpl<WeatherFetchInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherFetchSuccess,
    required TResult Function() weatherLocalisationFetchInProgress,
    required TResult Function(String cityName) weatherFetchInProgress,
    required TResult Function(Object error) weatherFetchFailure,
  }) {
    return weatherFetchInProgress(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
  }) {
    return weatherFetchInProgress?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchInProgress != null) {
      return weatherFetchInProgress(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchSuccess value) weatherFetchSuccess,
    required TResult Function(WeatherLocalisationFetchInProgress value)
        weatherLocalisationFetchInProgress,
    required TResult Function(WeatherFetchInProgress value)
        weatherFetchInProgress,
    required TResult Function(WeatherFetchFailure value) weatherFetchFailure,
  }) {
    return weatherFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
  }) {
    return weatherFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchInProgress != null) {
      return weatherFetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherFetchInProgressToJson(this);
  }
}

abstract class WeatherFetchInProgress implements WeatherState {
  const factory WeatherFetchInProgress({required String cityName}) =
      _$WeatherFetchInProgress;

  factory WeatherFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$WeatherFetchInProgress.fromJson;

  String get cityName;
  @JsonKey(ignore: true)
  $WeatherFetchInProgressCopyWith<WeatherFetchInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFetchFailureCopyWith<$Res> {
  factory $WeatherFetchFailureCopyWith(
          WeatherFetchFailure value, $Res Function(WeatherFetchFailure) then) =
      _$WeatherFetchFailureCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$WeatherFetchFailureCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherFetchFailureCopyWith<$Res> {
  _$WeatherFetchFailureCopyWithImpl(
      WeatherFetchFailure _value, $Res Function(WeatherFetchFailure) _then)
      : super(_value, (v) => _then(v as WeatherFetchFailure));

  @override
  WeatherFetchFailure get _value => super._value as WeatherFetchFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(WeatherFetchFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherFetchFailure implements WeatherFetchFailure {
  const _$WeatherFetchFailure({required this.error, String? $type})
      : $type = $type ?? 'weatherFetchFailure';

  factory _$WeatherFetchFailure.fromJson(Map<String, dynamic> json) =>
      _$$WeatherFetchFailureFromJson(json);

  @override
  final Object error;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.weatherFetchFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherFetchFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $WeatherFetchFailureCopyWith<WeatherFetchFailure> get copyWith =>
      _$WeatherFetchFailureCopyWithImpl<WeatherFetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherFetchSuccess,
    required TResult Function() weatherLocalisationFetchInProgress,
    required TResult Function(String cityName) weatherFetchInProgress,
    required TResult Function(Object error) weatherFetchFailure,
  }) {
    return weatherFetchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
  }) {
    return weatherFetchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherFetchSuccess,
    TResult Function()? weatherLocalisationFetchInProgress,
    TResult Function(String cityName)? weatherFetchInProgress,
    TResult Function(Object error)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchFailure != null) {
      return weatherFetchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchSuccess value) weatherFetchSuccess,
    required TResult Function(WeatherLocalisationFetchInProgress value)
        weatherLocalisationFetchInProgress,
    required TResult Function(WeatherFetchInProgress value)
        weatherFetchInProgress,
    required TResult Function(WeatherFetchFailure value) weatherFetchFailure,
  }) {
    return weatherFetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
  }) {
    return weatherFetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchSuccess value)? weatherFetchSuccess,
    TResult Function(WeatherLocalisationFetchInProgress value)?
        weatherLocalisationFetchInProgress,
    TResult Function(WeatherFetchInProgress value)? weatherFetchInProgress,
    TResult Function(WeatherFetchFailure value)? weatherFetchFailure,
    required TResult orElse(),
  }) {
    if (weatherFetchFailure != null) {
      return weatherFetchFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherFetchFailureToJson(this);
  }
}

abstract class WeatherFetchFailure implements WeatherState {
  const factory WeatherFetchFailure({required Object error}) =
      _$WeatherFetchFailure;

  factory WeatherFetchFailure.fromJson(Map<String, dynamic> json) =
      _$WeatherFetchFailure.fromJson;

  Object get error;
  @JsonKey(ignore: true)
  $WeatherFetchFailureCopyWith<WeatherFetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
