import 'package:geolocator/geolocator.dart';
import 'package:weather_app_bloc/data/data_providers/favorite_cities_provider.dart';
import 'package:weather_app_bloc/data/data_providers/open_weather_provider.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/models/weather_hourly.dart';

class WeatherRepository {
  final OpenWeatherProvider weatherProvider;
  final FavoriteCitiesProvider favoriteCitiesProvider;

  WeatherRepository({
    required this.weatherProvider,
    required this.favoriteCitiesProvider,
  });

  Future<Weather> getCityWeather(String cityName) async {
    print(
        '--------------------------------- Weather Request ---------------------------------');
    final String rawWeatherData =
        await weatherProvider.getRawCityWeatherData(cityName);

    final Weather cityWeather = Weather.fromJson(rawWeatherData);

    final String rawHourlyForcast = await weatherProvider
        .getLocationHourlyForcast(cityWeather.lat, cityWeather.lon);

    List<WeatherHourly> weatherHourlyList = [];
    for (int index = 0; index < 24; index++) {
      final WeatherHourly weatherHourly =
          WeatherHourly.fromJson(rawHourlyForcast, index);

      weatherHourlyList.add(weatherHourly);
    }

    final Weather weather =
        cityWeather.copyWith(weatherHourlyList: weatherHourlyList);

    return weather;
  }

  // List of Weather objects, the first one is the current

  Future<Weather> getLocationWeather() async {
    final Position position = await weatherProvider.getLocation();
    final rawWeatherData = await weatherProvider.getRawLocationWeatherData(
        position.latitude, position.longitude);

    final Weather tempWeather = Weather.fromJson(rawWeatherData);

    final String rawHourlyForcast = await weatherProvider
        .getLocationHourlyForcast(position.latitude, position.longitude);

    List<WeatherHourly> weatherHourlyList = [];
    for (int index = 0; index < 24; index++) {
      final WeatherHourly weatherHourly =
          WeatherHourly.fromJson(rawHourlyForcast, index);

      weatherHourlyList.add(weatherHourly);
    }

    final Weather weather =
        tempWeather.copyWith(weatherHourlyList: weatherHourlyList);

    return weather;
  }

  Future<List<Weather>> getFavoriteCitiesWeather() async {
    List<Weather> favoriteCitiesWeather = [];
    final List<String> favoriteCities =
        await favoriteCitiesProvider.getFavoriteCitesList();

    for (String city in favoriteCities) {
      final weather = await getCityWeather(city);
      favoriteCitiesWeather.add(weather);
    }

    return favoriteCitiesWeather;
  }

  Future<void> addFavoriteCity(String cityName) async {
    await favoriteCitiesProvider.addFavoriteCity(cityName);
  }

  Future<void> removeFavoriteCity(String cityName) async {
    await favoriteCitiesProvider.removeFavoriteCity(cityName);
  }
}
