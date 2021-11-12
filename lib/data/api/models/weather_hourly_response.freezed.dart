// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_hourly_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherHourlyResponse _$WeatherHourlyResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherHourlyResponse.fromJson(json);
}

/// @nodoc
class _$WeatherHourlyResponseTearOff {
  const _$WeatherHourlyResponseTearOff();

  _WeatherHourlyResponse call(
      {@JsonKey(name: 'hourly')
          required List<HourWeatherResponse> weatherHourly,
      @JsonKey(name: 'timezone_offset')
          required int timezoneOffset}) {
    return _WeatherHourlyResponse(
      weatherHourly: weatherHourly,
      timezoneOffset: timezoneOffset,
    );
  }

  WeatherHourlyResponse fromJson(Map<String, Object?> json) {
    return WeatherHourlyResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherHourlyResponse = _$WeatherHourlyResponseTearOff();

/// @nodoc
mixin _$WeatherHourlyResponse {
  @JsonKey(name: 'hourly')
  List<HourWeatherResponse> get weatherHourly =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherHourlyResponseCopyWith<WeatherHourlyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherHourlyResponseCopyWith<$Res> {
  factory $WeatherHourlyResponseCopyWith(WeatherHourlyResponse value,
          $Res Function(WeatherHourlyResponse) then) =
      _$WeatherHourlyResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'hourly') List<HourWeatherResponse> weatherHourly,
      @JsonKey(name: 'timezone_offset') int timezoneOffset});
}

/// @nodoc
class _$WeatherHourlyResponseCopyWithImpl<$Res>
    implements $WeatherHourlyResponseCopyWith<$Res> {
  _$WeatherHourlyResponseCopyWithImpl(this._value, this._then);

  final WeatherHourlyResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherHourlyResponse) _then;

  @override
  $Res call({
    Object? weatherHourly = freezed,
    Object? timezoneOffset = freezed,
  }) {
    return _then(_value.copyWith(
      weatherHourly: weatherHourly == freezed
          ? _value.weatherHourly
          : weatherHourly // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherResponse>,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WeatherHourlyResponseCopyWith<$Res>
    implements $WeatherHourlyResponseCopyWith<$Res> {
  factory _$WeatherHourlyResponseCopyWith(_WeatherHourlyResponse value,
          $Res Function(_WeatherHourlyResponse) then) =
      __$WeatherHourlyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'hourly') List<HourWeatherResponse> weatherHourly,
      @JsonKey(name: 'timezone_offset') int timezoneOffset});
}

/// @nodoc
class __$WeatherHourlyResponseCopyWithImpl<$Res>
    extends _$WeatherHourlyResponseCopyWithImpl<$Res>
    implements _$WeatherHourlyResponseCopyWith<$Res> {
  __$WeatherHourlyResponseCopyWithImpl(_WeatherHourlyResponse _value,
      $Res Function(_WeatherHourlyResponse) _then)
      : super(_value, (v) => _then(v as _WeatherHourlyResponse));

  @override
  _WeatherHourlyResponse get _value => super._value as _WeatherHourlyResponse;

  @override
  $Res call({
    Object? weatherHourly = freezed,
    Object? timezoneOffset = freezed,
  }) {
    return _then(_WeatherHourlyResponse(
      weatherHourly: weatherHourly == freezed
          ? _value.weatherHourly
          : weatherHourly // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherResponse>,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherHourlyResponse
    with DiagnosticableTreeMixin
    implements _WeatherHourlyResponse {
  _$_WeatherHourlyResponse(
      {@JsonKey(name: 'hourly') required this.weatherHourly,
      @JsonKey(name: 'timezone_offset') required this.timezoneOffset});

  factory _$_WeatherHourlyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherHourlyResponseFromJson(json);

  @override
  @JsonKey(name: 'hourly')
  final List<HourWeatherResponse> weatherHourly;
  @override
  @JsonKey(name: 'timezone_offset')
  final int timezoneOffset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherHourlyResponse(weatherHourly: $weatherHourly, timezoneOffset: $timezoneOffset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherHourlyResponse'))
      ..add(DiagnosticsProperty('weatherHourly', weatherHourly))
      ..add(DiagnosticsProperty('timezoneOffset', timezoneOffset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherHourlyResponse &&
            const DeepCollectionEquality()
                .equals(other.weatherHourly, weatherHourly) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(weatherHourly), timezoneOffset);

  @JsonKey(ignore: true)
  @override
  _$WeatherHourlyResponseCopyWith<_WeatherHourlyResponse> get copyWith =>
      __$WeatherHourlyResponseCopyWithImpl<_WeatherHourlyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherHourlyResponseToJson(this);
  }
}

abstract class _WeatherHourlyResponse implements WeatherHourlyResponse {
  factory _WeatherHourlyResponse(
      {@JsonKey(name: 'hourly')
          required List<HourWeatherResponse> weatherHourly,
      @JsonKey(name: 'timezone_offset')
          required int timezoneOffset}) = _$_WeatherHourlyResponse;

  factory _WeatherHourlyResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherHourlyResponse.fromJson;

  @override
  @JsonKey(name: 'hourly')
  List<HourWeatherResponse> get weatherHourly;
  @override
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset;
  @override
  @JsonKey(ignore: true)
  _$WeatherHourlyResponseCopyWith<_WeatherHourlyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
