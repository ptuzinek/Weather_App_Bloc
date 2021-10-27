import 'package:weather_app_bloc/data/database/favorite_cities_database.dart';

class FavoriteCitiesProvider {
  final FavoriteCitiesDatabase database;

  FavoriteCitiesProvider({required this.database});

  Future<List<String>> getFavoriteCitesList() async {
    final List<String> favoriteCitiesListFetched =
        await database.getFavoriteCities();

    return favoriteCitiesListFetched;
  }

  Future<bool> addFavoriteCity(String cityName) async {
    await database.addFavoriteCity(cityName);
    return true;
  }

  Future<bool> removeFavoriteCity(String cityName) async {
    await database.removeFavoriteCity(cityName);
    return true;
  }
}
