// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_new_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherFetchSuccess _$$WeatherFetchSuccessFromJson(
        Map<String, dynamic> json) =>
    _$WeatherFetchSuccess(
      weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WeatherFetchSuccessToJson(
        _$WeatherFetchSuccess instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'type': instance.$type,
    };

_$WeatherLocalisationFetchInProgress
    _$$WeatherLocalisationFetchInProgressFromJson(Map<String, dynamic> json) =>
        _$WeatherLocalisationFetchInProgress(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$WeatherLocalisationFetchInProgressToJson(
        _$WeatherLocalisationFetchInProgress instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$WeatherFetchInProgress _$$WeatherFetchInProgressFromJson(
        Map<String, dynamic> json) =>
    _$WeatherFetchInProgress(
      cityName: json['cityName'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WeatherFetchInProgressToJson(
        _$WeatherFetchInProgress instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'type': instance.$type,
    };

_$WeatherFetchFailure _$$WeatherFetchFailureFromJson(
        Map<String, dynamic> json) =>
    _$WeatherFetchFailure(
      error: json['error'] as Object,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WeatherFetchFailureToJson(
        _$WeatherFetchFailure instance) =>
    <String, dynamic>{
      'error': instance.error,
      'type': instance.$type,
    };
