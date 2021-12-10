// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayWeather _$$_DayWeatherFromJson(Map<String, dynamic> json) =>
    _$_DayWeather(
      dayTemperature: (json['dayTemperature'] as num).toDouble(),
      nightTemperature: (json['nightTemperature'] as num).toDouble(),
      weatherIconId: json['weatherIconId'] as String,
      precipitationProbability:
          (json['precipitationProbability'] as num).toDouble(),
      minTemperature: (json['minTemperature'] as num).toDouble(),
      maxTemperature: (json['maxTemperature'] as num).toDouble(),
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
    );

Map<String, dynamic> _$$_DayWeatherToJson(_$_DayWeather instance) =>
    <String, dynamic>{
      'dayTemperature': instance.dayTemperature,
      'nightTemperature': instance.nightTemperature,
      'weatherIconId': instance.weatherIconId,
      'precipitationProbability': instance.precipitationProbability,
      'minTemperature': instance.minTemperature,
      'maxTemperature': instance.maxTemperature,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
