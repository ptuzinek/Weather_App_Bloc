import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hour_weather_response.freezed.dart';
part 'hour_weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    required int id,
    required String description,
    @JsonKey(name: 'icon') required String weatherIconId,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class HourWeatherResponse with _$HourWeatherResponse {
  factory HourWeatherResponse({
    @JsonKey(name: 'dt') required int timeStamp,
    @JsonKey(name: 'temp') required double temperature,
    required int pressure,
    @JsonKey(name: 'clouds') required int cloudiness,
    required int visibility,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    required List<WeatherResponse> weather,
  }) = _HourWeatherResponse;

  factory HourWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherResponseFromJson(json);
}
