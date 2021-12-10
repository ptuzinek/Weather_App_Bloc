import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'day_weather_response.freezed.dart';
part 'day_weather_response.g.dart';

@freezed
class WeatherResponseDaily with _$WeatherResponseDaily {
  factory WeatherResponseDaily({
    @JsonKey(name: 'icon') required String weatherIconId,
  }) = _WeatherResponseDaily;

  factory WeatherResponseDaily.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDailyFromJson(json);
}

@freezed
class Temperature with _$Temperature {
  factory Temperature({
    required double day,
    required double night,
    required double min,
    required double max,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}

// Description:
// description -> HOURLY, max temp, min temp -> DAILY
// Table:
// Sunrise time, Sunset time -> DAILY, Rain possibility, Humidity, Wind,
// Feels like temperature, Rain Volume, Pressure, Visibility, UV index -> HOURLY

// Need day temperature, night temperature and day icon:
// ['daily'][index]['temp']['day']
// ['daily'][index]['temp']['night']
// ['daily']['index']['weather'][0]['icon']
@freezed
class DayWeatherResponse with _$DayWeatherResponse {
  factory DayWeatherResponse({
    required int sunrise,
    required int sunset,
    @JsonKey(name: 'temp') required Temperature temperature,
    required List<WeatherResponseDaily> weather,
    @JsonKey(name: 'pop') required double precipitationProbability,
  }) = _DayWeatherResponse;

  factory DayWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$DayWeatherResponseFromJson(json);
}
