import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc({required this.weatherRepository})
      : super(WeatherLocalisationFetchInProgress());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is CityWeatherRequested) {
      yield* _mapCityWeatherRequestedtoState(event);
      // }
      // else if (event is LocationWeatherRequested) {
      //   yield* _mapLocationWeatherRequestedtoState(event);
    } else if (event is FavoriteCityWeatherRequested) {
      yield* _mapFavoriteCityWeatherRequestedToState(event);
    }
  }

  Stream<WeatherState> _mapCityWeatherRequestedtoState(
      CityWeatherRequested event) async* {
    yield WeatherCityNameFetchInProgress(cityName: event.cityName);

    try {
      final weather = await weatherRepository.getCityWeather(event.cityName);
      yield WeatherFetchSuccess(weather: weather);
    } catch (e) {
      yield WeatherFetchFailure(error: e.toString());
    }
  }

  // Stream<WeatherState> _mapLocationWeatherRequestedtoState(
  //     LocationWeatherRequested event) async* {
  //   try {
  //     final weather = await weatherRepository.getLocationWeather();
  //     yield WeatherFetchSuccess(weather: weather);
  //   } catch (e) {
  //     yield WeatherFetchFailure(error: e.toString());
  //   }
  // }

  Stream<WeatherState> _mapFavoriteCityWeatherRequestedToState(
      FavoriteCityWeatherRequested event) async* {
    yield WeatherFetchSuccess(weather: event.weather);
  }

  @override
  String get id => 'weather';

  @override
  void onTransition(Transition<WeatherEvent, WeatherState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      if (json.isNotEmpty) {
        final weather = Weather.fromJson(json);
        print('Weather State LOADED');

        return WeatherFetchSuccess(weather: weather);
      }
    } catch (e) {
      return WeatherFetchFailure(error: e.toString());
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherFetchSuccess) {
      print('Weather State SAVED');
      return state.weather.toJson();
    } else {
      return null;
    }
  }
}
