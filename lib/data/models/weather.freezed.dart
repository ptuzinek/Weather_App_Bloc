// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {required double lat,
      required double lon,
      required String cityName,
      required int timezoneOffset,
      required List<HourWeather> weatherHourlyList}) {
    return _Weather(
      lat: lat,
      lon: lon,
      cityName: cityName,
      timezoneOffset: timezoneOffset,
      weatherHourlyList: weatherHourlyList,
    );
  }

  Weather fromJson(Map<String, Object?> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  int get timezoneOffset => throw _privateConstructorUsedError;
  List<HourWeather> get weatherHourlyList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {double lat,
      double lon,
      String cityName,
      int timezoneOffset,
      List<HourWeather> weatherHourlyList});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? cityName = freezed,
    Object? timezoneOffset = freezed,
    Object? weatherHourlyList = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      weatherHourlyList: weatherHourlyList == freezed
          ? _value.weatherHourlyList
          : weatherHourlyList // ignore: cast_nullable_to_non_nullable
              as List<HourWeather>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lat,
      double lon,
      String cityName,
      int timezoneOffset,
      List<HourWeather> weatherHourlyList});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? cityName = freezed,
    Object? timezoneOffset = freezed,
    Object? weatherHourlyList = freezed,
  }) {
    return _then(_Weather(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      weatherHourlyList: weatherHourlyList == freezed
          ? _value.weatherHourlyList
          : weatherHourlyList // ignore: cast_nullable_to_non_nullable
              as List<HourWeather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather extends _Weather with DiagnosticableTreeMixin {
  _$_Weather(
      {required this.lat,
      required this.lon,
      required this.cityName,
      required this.timezoneOffset,
      required this.weatherHourlyList})
      : super._();

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String cityName;
  @override
  final int timezoneOffset;
  @override
  final List<HourWeather> weatherHourlyList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weather(lat: $lat, lon: $lon, cityName: $cityName, timezoneOffset: $timezoneOffset, weatherHourlyList: $weatherHourlyList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weather'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('cityName', cityName))
      ..add(DiagnosticsProperty('timezoneOffset', timezoneOffset))
      ..add(DiagnosticsProperty('weatherHourlyList', weatherHourlyList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            const DeepCollectionEquality()
                .equals(other.weatherHourlyList, weatherHourlyList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, cityName,
      timezoneOffset, const DeepCollectionEquality().hash(weatherHourlyList));

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(this);
  }
}

abstract class _Weather extends Weather {
  factory _Weather(
      {required double lat,
      required double lon,
      required String cityName,
      required int timezoneOffset,
      required List<HourWeather> weatherHourlyList}) = _$_Weather;
  _Weather._() : super._();

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get cityName;
  @override
  int get timezoneOffset;
  @override
  List<HourWeather> get weatherHourlyList;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
