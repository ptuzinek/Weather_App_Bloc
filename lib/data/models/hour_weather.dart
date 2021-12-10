import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hour_weather.freezed.dart';
part 'hour_weather.g.dart';

@freezed
class HourWeather with _$HourWeather {
  const factory HourWeather({
    required int timeStamp,
    required double temperature,
    required double windSpeed,
    required int cloudiness,
    required int pressure,
    required String weatherIconId,
    required String weatherDescription,
    required double precipitationProbability,
    required int humidity,
    required double feelsLike,
    required int visibility,
    required double uvi,
  }) = _HourWeather;

  factory HourWeather.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherFromJson(json);
}
