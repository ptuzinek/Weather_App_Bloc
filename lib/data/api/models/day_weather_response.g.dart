// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResponseDaily _$$_WeatherResponseDailyFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherResponseDaily(
      weatherIconId: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherResponseDailyToJson(
        _$_WeatherResponseDaily instance) =>
    <String, dynamic>{
      'icon': instance.weatherIconId,
    };

_$_Temperature _$$_TemperatureFromJson(Map<String, dynamic> json) =>
    _$_Temperature(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TemperatureToJson(_$_Temperature instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'min': instance.min,
      'max': instance.max,
    };

_$_DayWeatherResponse _$$_DayWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DayWeatherResponse(
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
      temperature: Temperature.fromJson(json['temp'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherResponseDaily.fromJson(e as Map<String, dynamic>))
          .toList(),
      precipitationProbability: (json['pop'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DayWeatherResponseToJson(
        _$_DayWeatherResponse instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temperature,
      'weather': instance.weather,
      'pop': instance.precipitationProbability,
    };
