// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_daily_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDailyResponse _$WeatherDailyResponseFromJson(Map<String, dynamic> json) {
  return _WeatherDailyResponse.fromJson(json);
}

/// @nodoc
class _$WeatherDailyResponseTearOff {
  const _$WeatherDailyResponseTearOff();

  _WeatherDailyResponse call(
      {@JsonKey(name: 'daily')
          required List<DayWeatherResponse> weatherDaily}) {
    return _WeatherDailyResponse(
      weatherDaily: weatherDaily,
    );
  }

  WeatherDailyResponse fromJson(Map<String, Object?> json) {
    return WeatherDailyResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherDailyResponse = _$WeatherDailyResponseTearOff();

/// @nodoc
mixin _$WeatherDailyResponse {
  @JsonKey(name: 'daily')
  List<DayWeatherResponse> get weatherDaily =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyResponseCopyWith<WeatherDailyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyResponseCopyWith<$Res> {
  factory $WeatherDailyResponseCopyWith(WeatherDailyResponse value,
          $Res Function(WeatherDailyResponse) then) =
      _$WeatherDailyResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'daily') List<DayWeatherResponse> weatherDaily});
}

/// @nodoc
class _$WeatherDailyResponseCopyWithImpl<$Res>
    implements $WeatherDailyResponseCopyWith<$Res> {
  _$WeatherDailyResponseCopyWithImpl(this._value, this._then);

  final WeatherDailyResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherDailyResponse) _then;

  @override
  $Res call({
    Object? weatherDaily = freezed,
  }) {
    return _then(_value.copyWith(
      weatherDaily: weatherDaily == freezed
          ? _value.weatherDaily
          : weatherDaily // ignore: cast_nullable_to_non_nullable
              as List<DayWeatherResponse>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDailyResponseCopyWith<$Res>
    implements $WeatherDailyResponseCopyWith<$Res> {
  factory _$WeatherDailyResponseCopyWith(_WeatherDailyResponse value,
          $Res Function(_WeatherDailyResponse) then) =
      __$WeatherDailyResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'daily') List<DayWeatherResponse> weatherDaily});
}

/// @nodoc
class __$WeatherDailyResponseCopyWithImpl<$Res>
    extends _$WeatherDailyResponseCopyWithImpl<$Res>
    implements _$WeatherDailyResponseCopyWith<$Res> {
  __$WeatherDailyResponseCopyWithImpl(
      _WeatherDailyResponse _value, $Res Function(_WeatherDailyResponse) _then)
      : super(_value, (v) => _then(v as _WeatherDailyResponse));

  @override
  _WeatherDailyResponse get _value => super._value as _WeatherDailyResponse;

  @override
  $Res call({
    Object? weatherDaily = freezed,
  }) {
    return _then(_WeatherDailyResponse(
      weatherDaily: weatherDaily == freezed
          ? _value.weatherDaily
          : weatherDaily // ignore: cast_nullable_to_non_nullable
              as List<DayWeatherResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDailyResponse
    with DiagnosticableTreeMixin
    implements _WeatherDailyResponse {
  _$_WeatherDailyResponse({@JsonKey(name: 'daily') required this.weatherDaily});

  factory _$_WeatherDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDailyResponseFromJson(json);

  @override
  @JsonKey(name: 'daily')
  final List<DayWeatherResponse> weatherDaily;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDailyResponse(weatherDaily: $weatherDaily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDailyResponse'))
      ..add(DiagnosticsProperty('weatherDaily', weatherDaily));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherDailyResponse &&
            const DeepCollectionEquality()
                .equals(other.weatherDaily, weatherDaily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherDaily));

  @JsonKey(ignore: true)
  @override
  _$WeatherDailyResponseCopyWith<_WeatherDailyResponse> get copyWith =>
      __$WeatherDailyResponseCopyWithImpl<_WeatherDailyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDailyResponseToJson(this);
  }
}

abstract class _WeatherDailyResponse implements WeatherDailyResponse {
  factory _WeatherDailyResponse(
          {@JsonKey(name: 'daily')
              required List<DayWeatherResponse> weatherDaily}) =
      _$_WeatherDailyResponse;

  factory _WeatherDailyResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherDailyResponse.fromJson;

  @override
  @JsonKey(name: 'daily')
  List<DayWeatherResponse> get weatherDaily;
  @override
  @JsonKey(ignore: true)
  _$WeatherDailyResponseCopyWith<_WeatherDailyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
