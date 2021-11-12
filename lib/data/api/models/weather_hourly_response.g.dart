// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_hourly_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherHourlyResponse _$$_WeatherHourlyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherHourlyResponse(
      weatherHourly: (json['hourly'] as List<dynamic>)
          .map((e) => HourWeatherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      timezoneOffset: json['timezone_offset'] as int,
    );

Map<String, dynamic> _$$_WeatherHourlyResponseToJson(
        _$_WeatherHourlyResponse instance) =>
    <String, dynamic>{
      'hourly': instance.weatherHourly,
      'timezone_offset': instance.timezoneOffset,
    };
