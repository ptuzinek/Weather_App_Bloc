import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'favorite_cities_state.dart';
part 'favorite_cities_cubit.freezed.dart';
part 'favorite_cities_cubit.g.dart';

class FavoriteCitiesCubit extends HydratedCubit<FavoriteCitiesState> {
  final WeatherRepository weatherRepository;
  FavoriteCitiesCubit({required this.weatherRepository})
      : super(FavoriteCitiesInitial());

  Future<void> getFavoriteCitiesList() async {
    try {
      List<Weather> favoriteCitiesWeather =
          await weatherRepository.getFavoriteCitiesWeather();
      if (favoriteCitiesWeather.isNotEmpty) {
        emit(FavoriteCitiesFetchSuccess(
            favoriteCitiesWeather: favoriteCitiesWeather));
      } else {
        emit(FavoriteCitiesInitial());
      }
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

      if (newFavoriteCitiesList.length > 0) {
        emit(FavoriteCitiesFetchSuccess(
            favoriteCitiesWeather: newFavoriteCitiesList));
      } else {
        emit(FavoriteCitiesInitial());
      }

      await weatherRepository.removeFavoriteCity(weather.cityName);
    }
  }

  @override
  void onChange(Change<FavoriteCitiesState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  FavoriteCitiesState fromJson(Map<String, dynamic> json) {
    print(' --------------- >>>> Favorite Cities Loaded:');
    return FavoriteCitiesState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(FavoriteCitiesState state) {
    print(' --------------- >>>> Favorite Cities Saved:');

    return state.toJson();
  }
}
