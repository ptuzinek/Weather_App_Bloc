// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourWeather _$$_HourWeatherFromJson(Map<String, dynamic> json) =>
    _$_HourWeather(
      timeStamp: json['timeStamp'] as int,
      temperature: (json['temperature'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      cloudiness: json['cloudiness'] as int,
      pressure: json['pressure'] as int,
      weatherIconId: json['weatherIconId'] as String,
      weatherDescription: json['weatherDescription'] as String,
      precipitationProbability:
          (json['precipitationProbability'] as num).toDouble(),
      humidity: json['humidity'] as int,
      feelsLike: (json['feelsLike'] as num).toDouble(),
      visibility: json['visibility'] as int,
      uvi: (json['uvi'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HourWeatherToJson(_$_HourWeather instance) =>
    <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'temperature': instance.temperature,
      'windSpeed': instance.windSpeed,
      'cloudiness': instance.cloudiness,
      'pressure': instance.pressure,
      'weatherIconId': instance.weatherIconId,
      'weatherDescription': instance.weatherDescription,
      'precipitationProbability': instance.precipitationProbability,
      'humidity': instance.humidity,
      'feelsLike': instance.feelsLike,
      'visibility': instance.visibility,
      'uvi': instance.uvi,
    };
