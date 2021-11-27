// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_cities_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteCitiesInitial _$$FavoriteCitiesInitialFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteCitiesInitial(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FavoriteCitiesInitialToJson(
        _$FavoriteCitiesInitial instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$FavoriteCitiesFetchInProgress _$$FavoriteCitiesFetchInProgressFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteCitiesFetchInProgress(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FavoriteCitiesFetchInProgressToJson(
        _$FavoriteCitiesFetchInProgress instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$FavoriteCitiesFetchSuccess _$$FavoriteCitiesFetchSuccessFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteCitiesFetchSuccess(
      favoriteCitiesWeather: (json['favoriteCitiesWeather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FavoriteCitiesFetchSuccessToJson(
        _$FavoriteCitiesFetchSuccess instance) =>
    <String, dynamic>{
      'favoriteCitiesWeather':
          instance.favoriteCitiesWeather.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$FavoriteCitiesFetchFailure _$$FavoriteCitiesFetchFailureFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteCitiesFetchFailure(
      error: json['error'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FavoriteCitiesFetchFailureToJson(
        _$FavoriteCitiesFetchFailure instance) =>
    <String, dynamic>{
      'error': instance.error,
      'type': instance.$type,
    };
