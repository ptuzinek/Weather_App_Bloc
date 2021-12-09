import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'day_weather.freezed.dart';
part 'day_weather.g.dart';

@freezed
class DayWeather with _$DayWeather {
  const factory DayWeather({
    required double dayTemperature,
    required double nightTemperature,
    required String weatherIconId,
    required double precipitationProbability,
  }) = _DayWeather;

  factory DayWeather.fromJson(Map<String, dynamic> json) =>
      _$DayWeatherFromJson(json);
}
