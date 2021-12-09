// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_daily_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDailyResponse _$$_WeatherDailyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherDailyResponse(
      weatherDaily: (json['daily'] as List<dynamic>)
          .map((e) => DayWeatherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDailyResponseToJson(
        _$_WeatherDailyResponse instance) =>
    <String, dynamic>{
      'daily': instance.weatherDaily,
    };
