// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayWeather _$DayWeatherFromJson(Map<String, dynamic> json) {
  return _DayWeather.fromJson(json);
}

/// @nodoc
class _$DayWeatherTearOff {
  const _$DayWeatherTearOff();

  _DayWeather call(
      {required double dayTemperature,
      required double nightTemperature,
      required String weatherIconId,
      required double precipitationProbability,
      required double minTemperature,
      required double maxTemperature,
      required int sunrise,
      required int sunset}) {
    return _DayWeather(
      dayTemperature: dayTemperature,
      nightTemperature: nightTemperature,
      weatherIconId: weatherIconId,
      precipitationProbability: precipitationProbability,
      minTemperature: minTemperature,
      maxTemperature: maxTemperature,
      sunrise: sunrise,
      sunset: sunset,
    );
  }

  DayWeather fromJson(Map<String, Object?> json) {
    return DayWeather.fromJson(json);
  }
}

/// @nodoc
const $DayWeather = _$DayWeatherTearOff();

/// @nodoc
mixin _$DayWeather {
  double get dayTemperature => throw _privateConstructorUsedError;
  double get nightTemperature => throw _privateConstructorUsedError;
  String get weatherIconId => throw _privateConstructorUsedError;
  double get precipitationProbability => throw _privateConstructorUsedError;
  double get minTemperature => throw _privateConstructorUsedError;
  double get maxTemperature => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWeatherCopyWith<DayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWeatherCopyWith<$Res> {
  factory $DayWeatherCopyWith(
          DayWeather value, $Res Function(DayWeather) then) =
      _$DayWeatherCopyWithImpl<$Res>;
  $Res call(
      {double dayTemperature,
      double nightTemperature,
      String weatherIconId,
      double precipitationProbability,
      double minTemperature,
      double maxTemperature,
      int sunrise,
      int sunset});
}

/// @nodoc
class _$DayWeatherCopyWithImpl<$Res> implements $DayWeatherCopyWith<$Res> {
  _$DayWeatherCopyWithImpl(this._value, this._then);

  final DayWeather _value;
  // ignore: unused_field
  final $Res Function(DayWeather) _then;

  @override
  $Res call({
    Object? dayTemperature = freezed,
    Object? nightTemperature = freezed,
    Object? weatherIconId = freezed,
    Object? precipitationProbability = freezed,
    Object? minTemperature = freezed,
    Object? maxTemperature = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      dayTemperature: dayTemperature == freezed
          ? _value.dayTemperature
          : dayTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      nightTemperature: nightTemperature == freezed
          ? _value.nightTemperature
          : nightTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
      minTemperature: minTemperature == freezed
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: maxTemperature == freezed
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DayWeatherCopyWith<$Res> implements $DayWeatherCopyWith<$Res> {
  factory _$DayWeatherCopyWith(
          _DayWeather value, $Res Function(_DayWeather) then) =
      __$DayWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double dayTemperature,
      double nightTemperature,
      String weatherIconId,
      double precipitationProbability,
      double minTemperature,
      double maxTemperature,
      int sunrise,
      int sunset});
}

/// @nodoc
class __$DayWeatherCopyWithImpl<$Res> extends _$DayWeatherCopyWithImpl<$Res>
    implements _$DayWeatherCopyWith<$Res> {
  __$DayWeatherCopyWithImpl(
      _DayWeather _value, $Res Function(_DayWeather) _then)
      : super(_value, (v) => _then(v as _DayWeather));

  @override
  _DayWeather get _value => super._value as _DayWeather;

  @override
  $Res call({
    Object? dayTemperature = freezed,
    Object? nightTemperature = freezed,
    Object? weatherIconId = freezed,
    Object? precipitationProbability = freezed,
    Object? minTemperature = freezed,
    Object? maxTemperature = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_DayWeather(
      dayTemperature: dayTemperature == freezed
          ? _value.dayTemperature
          : dayTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      nightTemperature: nightTemperature == freezed
          ? _value.nightTemperature
          : nightTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
      minTemperature: minTemperature == freezed
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: maxTemperature == freezed
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayWeather with DiagnosticableTreeMixin implements _DayWeather {
  const _$_DayWeather(
      {required this.dayTemperature,
      required this.nightTemperature,
      required this.weatherIconId,
      required this.precipitationProbability,
      required this.minTemperature,
      required this.maxTemperature,
      required this.sunrise,
      required this.sunset});

  factory _$_DayWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DayWeatherFromJson(json);

  @override
  final double dayTemperature;
  @override
  final double nightTemperature;
  @override
  final String weatherIconId;
  @override
  final double precipitationProbability;
  @override
  final double minTemperature;
  @override
  final double maxTemperature;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayWeather(dayTemperature: $dayTemperature, nightTemperature: $nightTemperature, weatherIconId: $weatherIconId, precipitationProbability: $precipitationProbability, minTemperature: $minTemperature, maxTemperature: $maxTemperature, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayWeather'))
      ..add(DiagnosticsProperty('dayTemperature', dayTemperature))
      ..add(DiagnosticsProperty('nightTemperature', nightTemperature))
      ..add(DiagnosticsProperty('weatherIconId', weatherIconId))
      ..add(DiagnosticsProperty(
          'precipitationProbability', precipitationProbability))
      ..add(DiagnosticsProperty('minTemperature', minTemperature))
      ..add(DiagnosticsProperty('maxTemperature', maxTemperature))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayWeather &&
            (identical(other.dayTemperature, dayTemperature) ||
                other.dayTemperature == dayTemperature) &&
            (identical(other.nightTemperature, nightTemperature) ||
                other.nightTemperature == nightTemperature) &&
            (identical(other.weatherIconId, weatherIconId) ||
                other.weatherIconId == weatherIconId) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dayTemperature,
      nightTemperature,
      weatherIconId,
      precipitationProbability,
      minTemperature,
      maxTemperature,
      sunrise,
      sunset);

  @JsonKey(ignore: true)
  @override
  _$DayWeatherCopyWith<_DayWeather> get copyWith =>
      __$DayWeatherCopyWithImpl<_DayWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayWeatherToJson(this);
  }
}

abstract class _DayWeather implements DayWeather {
  const factory _DayWeather(
      {required double dayTemperature,
      required double nightTemperature,
      required String weatherIconId,
      required double precipitationProbability,
      required double minTemperature,
      required double maxTemperature,
      required int sunrise,
      required int sunset}) = _$_DayWeather;

  factory _DayWeather.fromJson(Map<String, dynamic> json) =
      _$_DayWeather.fromJson;

  @override
  double get dayTemperature;
  @override
  double get nightTemperature;
  @override
  String get weatherIconId;
  @override
  double get precipitationProbability;
  @override
  double get minTemperature;
  @override
  double get maxTemperature;
  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$DayWeatherCopyWith<_DayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
