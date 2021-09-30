class FavoriteCitiesDatabase {
  List<String> _favoriteCities = ['Warsaw', 'New York'];

  Future<List<String>> getFavoriteCities() async {
    await Future.delayed(Duration(milliseconds: 500));
    return _favoriteCities;
  }

  Future<bool> addFavoriteCity(String cityName) async {
    await Future.delayed(Duration(seconds: 1))
        .then((value) => _favoriteCities.add(cityName));
    return true;
  }

  Future<bool> removeFavoriteCity(String cityName) async {
    await Future.delayed(Duration(seconds: 1))
        .then((value) => _favoriteCities.remove(cityName));
    return true;
  }
}
