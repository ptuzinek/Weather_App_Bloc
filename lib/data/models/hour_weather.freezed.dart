// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hour_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourWeather _$HourWeatherFromJson(Map<String, dynamic> json) {
  return _HourWeather.fromJson(json);
}

/// @nodoc
class _$HourWeatherTearOff {
  const _$HourWeatherTearOff();

  _HourWeather call(
      {required int timeStamp,
      required double temperature,
      required double windSpeed,
      required int cloudiness,
      required int pressure,
      required String weatherIconId,
      required String weatherDescription}) {
    return _HourWeather(
      timeStamp: timeStamp,
      temperature: temperature,
      windSpeed: windSpeed,
      cloudiness: cloudiness,
      pressure: pressure,
      weatherIconId: weatherIconId,
      weatherDescription: weatherDescription,
    );
  }

  HourWeather fromJson(Map<String, Object?> json) {
    return HourWeather.fromJson(json);
  }
}

/// @nodoc
const $HourWeather = _$HourWeatherTearOff();

/// @nodoc
mixin _$HourWeather {
  int get timeStamp => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  int get cloudiness => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  String get weatherIconId => throw _privateConstructorUsedError;
  String get weatherDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherCopyWith<HourWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherCopyWith<$Res> {
  factory $HourWeatherCopyWith(
          HourWeather value, $Res Function(HourWeather) then) =
      _$HourWeatherCopyWithImpl<$Res>;
  $Res call(
      {int timeStamp,
      double temperature,
      double windSpeed,
      int cloudiness,
      int pressure,
      String weatherIconId,
      String weatherDescription});
}

/// @nodoc
class _$HourWeatherCopyWithImpl<$Res> implements $HourWeatherCopyWith<$Res> {
  _$HourWeatherCopyWithImpl(this._value, this._then);

  final HourWeather _value;
  // ignore: unused_field
  final $Res Function(HourWeather) _then;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? temperature = freezed,
    Object? windSpeed = freezed,
    Object? cloudiness = freezed,
    Object? pressure = freezed,
    Object? weatherIconId = freezed,
    Object? weatherDescription = freezed,
  }) {
    return _then(_value.copyWith(
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: weatherDescription == freezed
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HourWeatherCopyWith<$Res>
    implements $HourWeatherCopyWith<$Res> {
  factory _$HourWeatherCopyWith(
          _HourWeather value, $Res Function(_HourWeather) then) =
      __$HourWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {int timeStamp,
      double temperature,
      double windSpeed,
      int cloudiness,
      int pressure,
      String weatherIconId,
      String weatherDescription});
}

/// @nodoc
class __$HourWeatherCopyWithImpl<$Res> extends _$HourWeatherCopyWithImpl<$Res>
    implements _$HourWeatherCopyWith<$Res> {
  __$HourWeatherCopyWithImpl(
      _HourWeather _value, $Res Function(_HourWeather) _then)
      : super(_value, (v) => _then(v as _HourWeather));

  @override
  _HourWeather get _value => super._value as _HourWeather;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? temperature = freezed,
    Object? windSpeed = freezed,
    Object? cloudiness = freezed,
    Object? pressure = freezed,
    Object? weatherIconId = freezed,
    Object? weatherDescription = freezed,
  }) {
    return _then(_HourWeather(
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: weatherDescription == freezed
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourWeather with DiagnosticableTreeMixin implements _HourWeather {
  _$_HourWeather(
      {required this.timeStamp,
      required this.temperature,
      required this.windSpeed,
      required this.cloudiness,
      required this.pressure,
      required this.weatherIconId,
      required this.weatherDescription});

  factory _$_HourWeather.fromJson(Map<String, dynamic> json) =>
      _$$_HourWeatherFromJson(json);

  @override
  final int timeStamp;
  @override
  final double temperature;
  @override
  final double windSpeed;
  @override
  final int cloudiness;
  @override
  final int pressure;
  @override
  final String weatherIconId;
  @override
  final String weatherDescription;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourWeather(timeStamp: $timeStamp, temperature: $temperature, windSpeed: $windSpeed, cloudiness: $cloudiness, pressure: $pressure, weatherIconId: $weatherIconId, weatherDescription: $weatherDescription)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourWeather'))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('cloudiness', cloudiness))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('weatherIconId', weatherIconId))
      ..add(DiagnosticsProperty('weatherDescription', weatherDescription));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourWeather &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.cloudiness, cloudiness) ||
                other.cloudiness == cloudiness) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.weatherIconId, weatherIconId) ||
                other.weatherIconId == weatherIconId) &&
            (identical(other.weatherDescription, weatherDescription) ||
                other.weatherDescription == weatherDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeStamp, temperature,
      windSpeed, cloudiness, pressure, weatherIconId, weatherDescription);

  @JsonKey(ignore: true)
  @override
  _$HourWeatherCopyWith<_HourWeather> get copyWith =>
      __$HourWeatherCopyWithImpl<_HourWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourWeatherToJson(this);
  }
}

abstract class _HourWeather implements HourWeather {
  factory _HourWeather(
      {required int timeStamp,
      required double temperature,
      required double windSpeed,
      required int cloudiness,
      required int pressure,
      required String weatherIconId,
      required String weatherDescription}) = _$_HourWeather;

  factory _HourWeather.fromJson(Map<String, dynamic> json) =
      _$_HourWeather.fromJson;

  @override
  int get timeStamp;
  @override
  double get temperature;
  @override
  double get windSpeed;
  @override
  int get cloudiness;
  @override
  int get pressure;
  @override
  String get weatherIconId;
  @override
  String get weatherDescription;
  @override
  @JsonKey(ignore: true)
  _$HourWeatherCopyWith<_HourWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
