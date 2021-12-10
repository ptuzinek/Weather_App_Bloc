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

// Description:
// description -> HOURLY, max temp, min temp -> DAILY
// Table:
// Sunrise time, Sunset time -> DAILY, Rain possibility, Humidity, Wind,
// Feels like temperature, Rain Volume, Pressure, Visibility, UV index -> HOURLY

// ['hourly']['index']['temp']
// ['hourly']['index']['weather'][0]['id']
// ['hourly']['index']['weather'][0]['description']
// ['hourly']['index']['weather'][0]['icon']
// ['hourly']['index']

@freezed
class HourWeatherResponse with _$HourWeatherResponse {
  factory HourWeatherResponse({
    @JsonKey(name: 'dt') required int timeStamp,
    @JsonKey(name: 'temp') required double temperature,
    @JsonKey(name: 'clouds') required int cloudiness,
    @JsonKey(name: 'pop') required double precipitationProbability,
    required int humidity,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    @JsonKey(name: 'feels_like') required double feelsLike,
    required int pressure,
    required int visibility,
    required double uvi,
    required List<WeatherResponse> weather,
  }) = _HourWeatherResponse;

  factory HourWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherResponseFromJson(json);
}
