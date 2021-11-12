// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      cityName: json['cityName'] as String,
      timezoneOffset: json['timezoneOffset'] as int,
      weatherHourlyList: (json['weatherHourlyList'] as List<dynamic>)
          .map((e) => HourWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'cityName': instance.cityName,
      'timezoneOffset': instance.timezoneOffset,
      'weatherHourlyList': instance.weatherHourlyList,
    };
