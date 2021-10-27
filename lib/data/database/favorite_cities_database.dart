class FavoriteCitiesDatabase {
  List<String> _favoriteCities = ['Warsaw', 'New York'];

  Future<List<String>> getFavoriteCities() async {
    return _favoriteCities;
  }

  Future<bool> addFavoriteCity(String cityName) async {
    _favoriteCities.add(cityName);
    return true;
  }

  Future<bool> removeFavoriteCity(String cityName) async {
    _favoriteCities.remove(cityName);
    return true;
  }
}
