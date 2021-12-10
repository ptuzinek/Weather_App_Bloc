// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResponse _$$_WeatherResponseFromJson(Map<String, dynamic> json) =>
    _$_WeatherResponse(
      id: json['id'] as int,
      description: json['description'] as String,
      weatherIconId: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherResponseToJson(_$_WeatherResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'icon': instance.weatherIconId,
    };

_$_HourWeatherResponse _$$_HourWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HourWeatherResponse(
      timeStamp: json['dt'] as int,
      temperature: (json['temp'] as num).toDouble(),
      cloudiness: json['clouds'] as int,
      precipitationProbability: (json['pop'] as num).toDouble(),
      humidity: json['humidity'] as int,
      windSpeed: (json['wind_speed'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      pressure: json['pressure'] as int,
      visibility: json['visibility'] as int,
      uvi: (json['uvi'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HourWeatherResponseToJson(
        _$_HourWeatherResponse instance) =>
    <String, dynamic>{
      'dt': instance.timeStamp,
      'temp': instance.temperature,
      'clouds': instance.cloudiness,
      'pop': instance.precipitationProbability,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'uvi': instance.uvi,
      'weather': instance.weather,
    };
