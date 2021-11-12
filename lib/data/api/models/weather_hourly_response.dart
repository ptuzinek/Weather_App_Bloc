import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app_bloc/data/api/models/hour_weather_response.dart';

part 'weather_hourly_response.freezed.dart';
part 'weather_hourly_response.g.dart';

@freezed
class WeatherHourlyResponse with _$WeatherHourlyResponse {
  factory WeatherHourlyResponse({
    @JsonKey(name: 'hourly') required List<HourWeatherResponse> weatherHourly,
    @JsonKey(name: 'timezone_offset') required int timezoneOffset,
  }) = _WeatherHourlyResponse;

  factory WeatherHourlyResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherHourlyResponseFromJson(json);

  // String calculateCelsius(dynamic temperature) =>
  //     num.parse((temperature - 273).toStringAsFixed(0)).toString();
}
