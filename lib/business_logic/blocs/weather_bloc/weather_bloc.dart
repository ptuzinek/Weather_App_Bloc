import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc({required this.weatherRepository})
      : super(WeatherFetchInProgress());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is CityWeatherRequested) {
      yield* _mapCityWeatherRequestedtoState(event);
    } else if (event is LocationWeatherRequested) {
      yield* _mapLocationWeatherRequestedtoState(event);
    } else if (event is FavoriteCityWeatherRequested) {
      yield* _mapFavoriteCityWeatherRequestedToState(event);
    }
  }

  Stream<WeatherState> _mapCityWeatherRequestedtoState(
      CityWeatherRequested event) async* {
    try {
      final weather = await weatherRepository.getCityWeather(event.cityName);
      yield WeatherFetchSuccess(weather: weather);
    } catch (e) {
      yield WeatherFetchFailure(error: e.toString());
    }
  }

  Stream<WeatherState> _mapLocationWeatherRequestedtoState(
      LocationWeatherRequested event) async* {
    try {
      final weather = await weatherRepository.getLocationWeather();
      yield WeatherFetchSuccess(weather: weather);
    } catch (e) {
      yield WeatherFetchFailure(error: e.toString());
    }
  }

  Stream<WeatherState> _mapFavoriteCityWeatherRequestedToState(
      FavoriteCityWeatherRequested event) async* {
    yield WeatherFetchSuccess(weather: event.weather);
  }

  @override
  Stream<Transition<WeatherEvent, WeatherState>> transformEvents(
    Stream<WeatherEvent> events,
    TransitionFunction<WeatherEvent, WeatherState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 900)),
      transitionFn,
    );
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
    print('WeatherBloc JSON:');
    print(json);
    try {
      if (json.isNotEmpty) {
        final weather = Weather.fromMapBloc(json);
        print('Weather State LOADED');
        print(weather.weatherHourlyList.runtimeType);

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
      return state.weather.toMap();
    } else {
      return null;
    }
  }
}
