import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app_bloc/data/models/day_weather.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const Weather._();

  @JsonSerializable(explicitToJson: true)
  const factory Weather({
    required double lat,
    required double lon,
    required String cityName,
    required int timezoneOffset,
    required List<HourWeather> weatherHourlyList,
    required List<DayWeather> weatherDailyList,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  String calculateCelsius(dynamic temperature) =>
      num.parse((temperature - 273).toStringAsFixed(0)).toString();
}
