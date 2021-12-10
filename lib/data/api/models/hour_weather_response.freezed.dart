// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hour_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
class _$WeatherResponseTearOff {
  const _$WeatherResponseTearOff();

  _WeatherResponse call(
      {required int id,
      required String description,
      @JsonKey(name: 'icon') required String weatherIconId}) {
    return _WeatherResponse(
      id: id,
      description: description,
      weatherIconId: weatherIconId,
    );
  }

  WeatherResponse fromJson(Map<String, Object?> json) {
    return WeatherResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherResponse = _$WeatherResponseTearOff();

/// @nodoc
mixin _$WeatherResponse {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get weatherIconId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String description,
      @JsonKey(name: 'icon') String weatherIconId});
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  final WeatherResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? weatherIconId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(
          _WeatherResponse value, $Res Function(_WeatherResponse) then) =
      __$WeatherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String description,
      @JsonKey(name: 'icon') String weatherIconId});
}

/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(
      _WeatherResponse _value, $Res Function(_WeatherResponse) _then)
      : super(_value, (v) => _then(v as _WeatherResponse));

  @override
  _WeatherResponse get _value => super._value as _WeatherResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? weatherIconId = freezed,
  }) {
    return _then(_WeatherResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIconId: weatherIconId == freezed
          ? _value.weatherIconId
          : weatherIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponse
    with DiagnosticableTreeMixin
    implements _WeatherResponse {
  _$_WeatherResponse(
      {required this.id,
      required this.description,
      @JsonKey(name: 'icon') required this.weatherIconId});

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  @JsonKey(name: 'icon')
  final String weatherIconId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherResponse(id: $id, description: $description, weatherIconId: $weatherIconId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('weatherIconId', weatherIconId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weatherIconId, weatherIconId) ||
                other.weatherIconId == weatherIconId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description, weatherIconId);

  @JsonKey(ignore: true)
  @override
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  factory _WeatherResponse(
          {required int id,
          required String description,
          @JsonKey(name: 'icon') required String weatherIconId}) =
      _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  @JsonKey(name: 'icon')
  String get weatherIconId;
  @override
  @JsonKey(ignore: true)
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

HourWeatherResponse _$HourWeatherResponseFromJson(Map<String, dynamic> json) {
  return _HourWeatherResponse.fromJson(json);
}

/// @nodoc
class _$HourWeatherResponseTearOff {
  const _$HourWeatherResponseTearOff();

  _HourWeatherResponse call(
      {@JsonKey(name: 'dt') required int timeStamp,
      @JsonKey(name: 'temp') required double temperature,
      @JsonKey(name: 'clouds') required int cloudiness,
      @JsonKey(name: 'pop') required double precipitationProbability,
      required int humidity,
      @JsonKey(name: 'wind_speed') required double windSpeed,
      @JsonKey(name: 'feels_like') required double feelsLike,
      required int pressure,
      required int visibility,
      required double uvi,
      required List<WeatherResponse> weather}) {
    return _HourWeatherResponse(
      timeStamp: timeStamp,
      temperature: temperature,
      cloudiness: cloudiness,
      precipitationProbability: precipitationProbability,
      humidity: humidity,
      windSpeed: windSpeed,
      feelsLike: feelsLike,
      pressure: pressure,
      visibility: visibility,
      uvi: uvi,
      weather: weather,
    );
  }

  HourWeatherResponse fromJson(Map<String, Object?> json) {
    return HourWeatherResponse.fromJson(json);
  }
}

/// @nodoc
const $HourWeatherResponse = _$HourWeatherResponseTearOff();

/// @nodoc
mixin _$HourWeatherResponse {
  @JsonKey(name: 'dt')
  int get timeStamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  int get cloudiness => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double get precipitationProbability => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;
  List<WeatherResponse> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherResponseCopyWith<HourWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherResponseCopyWith<$Res> {
  factory $HourWeatherResponseCopyWith(
          HourWeatherResponse value, $Res Function(HourWeatherResponse) then) =
      _$HourWeatherResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int timeStamp,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'clouds') int cloudiness,
      @JsonKey(name: 'pop') double precipitationProbability,
      int humidity,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'feels_like') double feelsLike,
      int pressure,
      int visibility,
      double uvi,
      List<WeatherResponse> weather});
}

/// @nodoc
class _$HourWeatherResponseCopyWithImpl<$Res>
    implements $HourWeatherResponseCopyWith<$Res> {
  _$HourWeatherResponseCopyWithImpl(this._value, this._then);

  final HourWeatherResponse _value;
  // ignore: unused_field
  final $Res Function(HourWeatherResponse) _then;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? temperature = freezed,
    Object? cloudiness = freezed,
    Object? precipitationProbability = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? uvi = freezed,
    Object? weather = freezed,
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
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
    ));
  }
}

/// @nodoc
abstract class _$HourWeatherResponseCopyWith<$Res>
    implements $HourWeatherResponseCopyWith<$Res> {
  factory _$HourWeatherResponseCopyWith(_HourWeatherResponse value,
          $Res Function(_HourWeatherResponse) then) =
      __$HourWeatherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int timeStamp,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'clouds') int cloudiness,
      @JsonKey(name: 'pop') double precipitationProbability,
      int humidity,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'feels_like') double feelsLike,
      int pressure,
      int visibility,
      double uvi,
      List<WeatherResponse> weather});
}

/// @nodoc
class __$HourWeatherResponseCopyWithImpl<$Res>
    extends _$HourWeatherResponseCopyWithImpl<$Res>
    implements _$HourWeatherResponseCopyWith<$Res> {
  __$HourWeatherResponseCopyWithImpl(
      _HourWeatherResponse _value, $Res Function(_HourWeatherResponse) _then)
      : super(_value, (v) => _then(v as _HourWeatherResponse));

  @override
  _HourWeatherResponse get _value => super._value as _HourWeatherResponse;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? temperature = freezed,
    Object? cloudiness = freezed,
    Object? precipitationProbability = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? uvi = freezed,
    Object? weather = freezed,
  }) {
    return _then(_HourWeatherResponse(
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourWeatherResponse
    with DiagnosticableTreeMixin
    implements _HourWeatherResponse {
  _$_HourWeatherResponse(
      {@JsonKey(name: 'dt') required this.timeStamp,
      @JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'clouds') required this.cloudiness,
      @JsonKey(name: 'pop') required this.precipitationProbability,
      required this.humidity,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      required this.pressure,
      required this.visibility,
      required this.uvi,
      required this.weather});

  factory _$_HourWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HourWeatherResponseFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int timeStamp;
  @override
  @JsonKey(name: 'temp')
  final double temperature;
  @override
  @JsonKey(name: 'clouds')
  final int cloudiness;
  @override
  @JsonKey(name: 'pop')
  final double precipitationProbability;
  @override
  final int humidity;
  @override
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  final int pressure;
  @override
  final int visibility;
  @override
  final double uvi;
  @override
  final List<WeatherResponse> weather;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourWeatherResponse(timeStamp: $timeStamp, temperature: $temperature, cloudiness: $cloudiness, precipitationProbability: $precipitationProbability, humidity: $humidity, windSpeed: $windSpeed, feelsLike: $feelsLike, pressure: $pressure, visibility: $visibility, uvi: $uvi, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourWeatherResponse'))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('cloudiness', cloudiness))
      ..add(DiagnosticsProperty(
          'precipitationProbability', precipitationProbability))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('uvi', uvi))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourWeatherResponse &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.cloudiness, cloudiness) ||
                other.cloudiness == cloudiness) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeStamp,
      temperature,
      cloudiness,
      precipitationProbability,
      humidity,
      windSpeed,
      feelsLike,
      pressure,
      visibility,
      uvi,
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$HourWeatherResponseCopyWith<_HourWeatherResponse> get copyWith =>
      __$HourWeatherResponseCopyWithImpl<_HourWeatherResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourWeatherResponseToJson(this);
  }
}

abstract class _HourWeatherResponse implements HourWeatherResponse {
  factory _HourWeatherResponse(
      {@JsonKey(name: 'dt') required int timeStamp,
      @JsonKey(name: 'temp') required double temperature,
      @JsonKey(name: 'clouds') required int cloudiness,
      @JsonKey(name: 'pop') required double precipitationProbability,
      required int humidity,
      @JsonKey(name: 'wind_speed') required double windSpeed,
      @JsonKey(name: 'feels_like') required double feelsLike,
      required int pressure,
      required int visibility,
      required double uvi,
      required List<WeatherResponse> weather}) = _$_HourWeatherResponse;

  factory _HourWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_HourWeatherResponse.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get timeStamp;
  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  @JsonKey(name: 'clouds')
  int get cloudiness;
  @override
  @JsonKey(name: 'pop')
  double get precipitationProbability;
  @override
  int get humidity;
  @override
  @JsonKey(name: 'wind_speed')
  double get windSpeed;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override
  int get pressure;
  @override
  int get visibility;
  @override
  double get uvi;
  @override
  List<WeatherResponse> get weather;
  @override
  @JsonKey(ignore: true)
  _$HourWeatherResponseCopyWith<_HourWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
