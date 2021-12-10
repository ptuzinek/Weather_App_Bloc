// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponseDaily _$WeatherResponseDailyFromJson(Map<String, dynamic> json) {
  return _WeatherResponseDaily.fromJson(json);
}

/// @nodoc
class _$WeatherResponseDailyTearOff {
  const _$WeatherResponseDailyTearOff();

  _WeatherResponseDaily call(
      {@JsonKey(name: 'icon') required String weatherIconId}) {
    return _WeatherResponseDaily(
      weatherIconId: weatherIconId,
    );
  }

  WeatherResponseDaily fromJson(Map<String, Object?> json) {
    return WeatherResponseDaily.fromJson(json);
  }
}

/// @nodoc
const $WeatherResponseDaily = _$WeatherResponseDailyTearOff();

/// @nodoc
mixin _$WeatherResponseDaily {
  @JsonKey(name: 'icon')
  String get weatherIconId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseDailyCopyWith<WeatherResponseDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseDailyCopyWith<$Res> {
  factory $WeatherResponseDailyCopyWith(WeatherResponseDaily value,
          $Res Function(WeatherResponseDaily) then) =
      _$WeatherResponseDailyCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'icon') String weatherIconId});
}

/// @nodoc
class _$WeatherResponseDailyCopyWithImpl<$Res>
    implements $WeatherResponseDailyCopyWith<$Res> {
  _$WeatherResponseDailyCopyWithImpl(this._value, this._then);

  final WeatherResponseDaily _value;
  // ignore: unused_field
  final $Res Function(WeatherResponseDaily) _then;

  @override
  $Res call({
    Object? weatherIconId = freezed,
  }) {
    return _then(_value.copyWith(
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherResponseDailyCopyWith<$Res>
    implements $WeatherResponseDailyCopyWith<$Res> {
  factory _$WeatherResponseDailyCopyWith(_WeatherResponseDaily value,
          $Res Function(_WeatherResponseDaily) then) =
      __$WeatherResponseDailyCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'icon') String weatherIconId});
}

/// @nodoc
class __$WeatherResponseDailyCopyWithImpl<$Res>
    extends _$WeatherResponseDailyCopyWithImpl<$Res>
    implements _$WeatherResponseDailyCopyWith<$Res> {
  __$WeatherResponseDailyCopyWithImpl(
      _WeatherResponseDaily _value, $Res Function(_WeatherResponseDaily) _then)
      : super(_value, (v) => _then(v as _WeatherResponseDaily));

  @override
  _WeatherResponseDaily get _value => super._value as _WeatherResponseDaily;

  @override
  $Res call({
    Object? weatherIconId = freezed,
  }) {
    return _then(_WeatherResponseDaily(
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponseDaily
    with DiagnosticableTreeMixin
    implements _WeatherResponseDaily {
  _$_WeatherResponseDaily({@JsonKey(name: 'icon') required this.weatherIconId});

  factory _$_WeatherResponseDaily.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseDailyFromJson(json);

  @override
  @JsonKey(name: 'icon')
  final String weatherIconId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherResponseDaily(weatherIconId: $weatherIconId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherResponseDaily'))
      ..add(DiagnosticsProperty('weatherIconId', weatherIconId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponseDaily &&
            (identical(other.weatherIconId, weatherIconId) ||
                other.weatherIconId == weatherIconId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherIconId);

  @JsonKey(ignore: true)
  @override
  _$WeatherResponseDailyCopyWith<_WeatherResponseDaily> get copyWith =>
      __$WeatherResponseDailyCopyWithImpl<_WeatherResponseDaily>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseDailyToJson(this);
  }
}

abstract class _WeatherResponseDaily implements WeatherResponseDaily {
  factory _WeatherResponseDaily(
          {@JsonKey(name: 'icon') required String weatherIconId}) =
      _$_WeatherResponseDaily;

  factory _WeatherResponseDaily.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponseDaily.fromJson;

  @override
  @JsonKey(name: 'icon')
  String get weatherIconId;
  @override
  @JsonKey(ignore: true)
  _$WeatherResponseDailyCopyWith<_WeatherResponseDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
class _$TemperatureTearOff {
  const _$TemperatureTearOff();

  _Temperature call(
      {required double day,
      required double night,
      required double min,
      required double max}) {
    return _Temperature(
      day: day,
      night: night,
      min: min,
      max: max,
    );
  }

  Temperature fromJson(Map<String, Object?> json) {
    return Temperature.fromJson(json);
  }
}

/// @nodoc
const $Temperature = _$TemperatureTearOff();

/// @nodoc
mixin _$Temperature {
  double get day => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res>;
  $Res call({double day, double night, double min, double max});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res> implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  final Temperature _value;
  // ignore: unused_field
  final $Res Function(Temperature) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TemperatureCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$TemperatureCopyWith(
          _Temperature value, $Res Function(_Temperature) then) =
      __$TemperatureCopyWithImpl<$Res>;
  @override
  $Res call({double day, double night, double min, double max});
}

/// @nodoc
class __$TemperatureCopyWithImpl<$Res> extends _$TemperatureCopyWithImpl<$Res>
    implements _$TemperatureCopyWith<$Res> {
  __$TemperatureCopyWithImpl(
      _Temperature _value, $Res Function(_Temperature) _then)
      : super(_value, (v) => _then(v as _Temperature));

  @override
  _Temperature get _value => super._value as _Temperature;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_Temperature(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temperature with DiagnosticableTreeMixin implements _Temperature {
  _$_Temperature(
      {required this.day,
      required this.night,
      required this.min,
      required this.max});

  factory _$_Temperature.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureFromJson(json);

  @override
  final double day;
  @override
  final double night;
  @override
  final double min;
  @override
  final double max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Temperature(day: $day, night: $night, min: $min, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Temperature'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('night', night))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Temperature &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, night, min, max);

  @JsonKey(ignore: true)
  @override
  _$TemperatureCopyWith<_Temperature> get copyWith =>
      __$TemperatureCopyWithImpl<_Temperature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureToJson(this);
  }
}

abstract class _Temperature implements Temperature {
  factory _Temperature(
      {required double day,
      required double night,
      required double min,
      required double max}) = _$_Temperature;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$_Temperature.fromJson;

  @override
  double get day;
  @override
  double get night;
  @override
  double get min;
  @override
  double get max;
  @override
  @JsonKey(ignore: true)
  _$TemperatureCopyWith<_Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

DayWeatherResponse _$DayWeatherResponseFromJson(Map<String, dynamic> json) {
  return _DayWeatherResponse.fromJson(json);
}

/// @nodoc
class _$DayWeatherResponseTearOff {
  const _$DayWeatherResponseTearOff();

  _DayWeatherResponse call(
      {required int sunrise,
      required int sunset,
      @JsonKey(name: 'temp') required Temperature temperature,
      required List<WeatherResponseDaily> weather,
      @JsonKey(name: 'pop') required double precipitationProbability}) {
    return _DayWeatherResponse(
      sunrise: sunrise,
      sunset: sunset,
      temperature: temperature,
      weather: weather,
      precipitationProbability: precipitationProbability,
    );
  }

  DayWeatherResponse fromJson(Map<String, Object?> json) {
    return DayWeatherResponse.fromJson(json);
  }
}

/// @nodoc
const $DayWeatherResponse = _$DayWeatherResponseTearOff();

/// @nodoc
mixin _$DayWeatherResponse {
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  Temperature get temperature => throw _privateConstructorUsedError;
  List<WeatherResponseDaily> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double get precipitationProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWeatherResponseCopyWith<DayWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWeatherResponseCopyWith<$Res> {
  factory $DayWeatherResponseCopyWith(
          DayWeatherResponse value, $Res Function(DayWeatherResponse) then) =
      _$DayWeatherResponseCopyWithImpl<$Res>;
  $Res call(
      {int sunrise,
      int sunset,
      @JsonKey(name: 'temp') Temperature temperature,
      List<WeatherResponseDaily> weather,
      @JsonKey(name: 'pop') double precipitationProbability});

  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class _$DayWeatherResponseCopyWithImpl<$Res>
    implements $DayWeatherResponseCopyWith<$Res> {
  _$DayWeatherResponseCopyWithImpl(this._value, this._then);

  final DayWeatherResponse _value;
  // ignore: unused_field
  final $Res Function(DayWeatherResponse) _then;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temperature = freezed,
    Object? weather = freezed,
    Object? precipitationProbability = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponseDaily>,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $TemperatureCopyWith<$Res> get temperature {
    return $TemperatureCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value));
    });
  }
}

/// @nodoc
abstract class _$DayWeatherResponseCopyWith<$Res>
    implements $DayWeatherResponseCopyWith<$Res> {
  factory _$DayWeatherResponseCopyWith(
          _DayWeatherResponse value, $Res Function(_DayWeatherResponse) then) =
      __$DayWeatherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int sunrise,
      int sunset,
      @JsonKey(name: 'temp') Temperature temperature,
      List<WeatherResponseDaily> weather,
      @JsonKey(name: 'pop') double precipitationProbability});

  @override
  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class __$DayWeatherResponseCopyWithImpl<$Res>
    extends _$DayWeatherResponseCopyWithImpl<$Res>
    implements _$DayWeatherResponseCopyWith<$Res> {
  __$DayWeatherResponseCopyWithImpl(
      _DayWeatherResponse _value, $Res Function(_DayWeatherResponse) _then)
      : super(_value, (v) => _then(v as _DayWeatherResponse));

  @override
  _DayWeatherResponse get _value => super._value as _DayWeatherResponse;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temperature = freezed,
    Object? weather = freezed,
    Object? precipitationProbability = freezed,
  }) {
    return _then(_DayWeatherResponse(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponseDaily>,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayWeatherResponse
    with DiagnosticableTreeMixin
    implements _DayWeatherResponse {
  _$_DayWeatherResponse(
      {required this.sunrise,
      required this.sunset,
      @JsonKey(name: 'temp') required this.temperature,
      required this.weather,
      @JsonKey(name: 'pop') required this.precipitationProbability});

  factory _$_DayWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DayWeatherResponseFromJson(json);

  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  @JsonKey(name: 'temp')
  final Temperature temperature;
  @override
  final List<WeatherResponseDaily> weather;
  @override
  @JsonKey(name: 'pop')
  final double precipitationProbability;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayWeatherResponse(sunrise: $sunrise, sunset: $sunset, temperature: $temperature, weather: $weather, precipitationProbability: $precipitationProbability)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayWeatherResponse'))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty(
          'precipitationProbability', precipitationProbability));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayWeatherResponse &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset, temperature,
      const DeepCollectionEquality().hash(weather), precipitationProbability);

  @JsonKey(ignore: true)
  @override
  _$DayWeatherResponseCopyWith<_DayWeatherResponse> get copyWith =>
      __$DayWeatherResponseCopyWithImpl<_DayWeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayWeatherResponseToJson(this);
  }
}

abstract class _DayWeatherResponse implements DayWeatherResponse {
  factory _DayWeatherResponse(
          {required int sunrise,
          required int sunset,
          @JsonKey(name: 'temp') required Temperature temperature,
          required List<WeatherResponseDaily> weather,
          @JsonKey(name: 'pop') required double precipitationProbability}) =
      _$_DayWeatherResponse;

  factory _DayWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_DayWeatherResponse.fromJson;

  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(name: 'temp')
  Temperature get temperature;
  @override
  List<WeatherResponseDaily> get weather;
  @override
  @JsonKey(name: 'pop')
  double get precipitationProbability;
  @override
  @JsonKey(ignore: true)
  _$DayWeatherResponseCopyWith<_DayWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
