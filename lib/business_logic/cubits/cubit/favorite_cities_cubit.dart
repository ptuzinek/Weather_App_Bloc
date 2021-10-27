import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'favorite_cities_state.dart';

class FavoriteCitiesCubit extends HydratedCubit<FavoriteCitiesState> {
  final WeatherRepository weatherRepository;
  FavoriteCitiesCubit({required this.weatherRepository})
      : super(FavoriteCitiesInitial());

  Future<void> getFavoriteCitiesList() async {
    List<Weather> favoriteCitiesWeather =
        await weatherRepository.getFavoriteCitiesWeather();
    try {
      emit(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: favoriteCitiesWeather));
    } catch (e) {
      emit(FavoriteCitiesFetchFailure(error: e.toString()));
    }
  }

  void addCityToFavorite(String cityName) async {
    //TODO: Implement saving City name to the database
    await weatherRepository.addFavoriteCity(cityName);
    getFavoriteCitiesList();
  }

  void removeCityFromFavorites(Weather weather) async {
    if (state is FavoriteCitiesFetchSuccess) {
      List<Weather> newFavoriteCitiesList = List.from(
          (state as FavoriteCitiesFetchSuccess).favoriteCitiesWeather);
      newFavoriteCitiesList.remove(weather);

      emit(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: newFavoriteCitiesList));

      await weatherRepository.removeFavoriteCity(weather.cityName);
    }
  }

  @override
  void onChange(Change<FavoriteCitiesState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  String get id => 'favorites';

  @override
  FavoriteCitiesState? fromJson(Map<String, dynamic> json) {
    try {
      if (json.isNotEmpty) {
        print('Favorites List State LOADED');
        final favoriteCitiesFetchSuccess =
            FavoriteCitiesFetchSuccess.fromMap(json);
        return favoriteCitiesFetchSuccess;
      }
    } catch (e) {
      FavoriteCitiesFetchFailure(error: e.toString());
    }
  }

  @override
  Map<String, dynamic>? toJson(FavoriteCitiesState state) {
    if (state is FavoriteCitiesFetchSuccess) {
      print('Favorites List State SAVED');

      return state.toMap();
    }
    return null;
  }
}
