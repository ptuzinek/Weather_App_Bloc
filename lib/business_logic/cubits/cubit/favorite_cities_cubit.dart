import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'favorite_cities_state.dart';

class FavoriteCitiesCubit extends Cubit<FavoriteCitiesState> {
  final WeatherRepository weatherRepository;
  FavoriteCitiesCubit({required this.weatherRepository})
      : super(FavoriteCitiesInitial());

  Future<void> getFavoriteCitiesList() async {
    emit(FavoriteCitiesFetchInProgress());
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
  }

  void removeCityFromFavorites(Weather weather) async {
    if (state is FavoriteCitiesFetchSuccess) {
      List<Weather> newFavoriteCitiesList = List.from(
          (state as FavoriteCitiesFetchSuccess).favoriteCitiesWeather);
      print('Favorites List BEFORE: $newFavoriteCitiesList');
      newFavoriteCitiesList.remove(weather);
      print('Favorites List After: $newFavoriteCitiesList');

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
}
