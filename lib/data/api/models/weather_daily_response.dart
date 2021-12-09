import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app_bloc/data/api/models/day_weather_response.dart';

part 'weather_daily_response.freezed.dart';
part 'weather_daily_response.g.dart';

@freezed
class WeatherDailyResponse with _$WeatherDailyResponse {
  factory WeatherDailyResponse({
    @JsonKey(name: 'daily') required List<DayWeatherResponse> weatherDaily,
  }) = _WeatherDailyResponse;

  factory WeatherDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyResponseFromJson(json);
}
