import 'package:geolocator/geolocator.dart';
import 'package:weather_app_bloc/data/api/models/daily_and_hourly_weather.dart';
import 'package:weather_app_bloc/data/api/models/location_response.dart';
import 'package:weather_app_bloc/data/api/open_weather_api_client.dart';
import 'package:weather_app_bloc/data/data_providers/favorite_cities_provider.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/models/weather_mapper.dart';

class WeatherRepository {
  final OpenWeatherApiClient weatherApiClient;
  final FavoriteCitiesProvider favoriteCitiesProvider;

  WeatherRepository({
    required this.weatherApiClient,
    required this.favoriteCitiesProvider,
  });

  Future<Weather> getCityWeather(String cityName) async {
    print('------>>>>  Weather Request');

    final LocationResponse location =
        await weatherApiClient.getCityLocation(cityName);

    final FullWeatherResponse fullWeatherResponse =
        await weatherApiClient.getLocationDailyAndHourlyForcast(
            location.coordinates.lat, location.coordinates.lon);

    final Weather weather = WeatherMapper.mapWeather(
        locationResponse: location,
        weatherHourlyResponse: fullWeatherResponse.weatherHourlyResponse,
        weatherDailyResponse: fullWeatherResponse.weatherDailyResponse);

    return weather;
  }

  Future<Weather> getLocationWeather() async {
    final Position position = await weatherApiClient.getLocation();
    final LocationResponse location = await weatherApiClient.getLocationInfo(
        position.latitude, position.latitude);

    final FullWeatherResponse fullWeatherResponse =
        await weatherApiClient.getLocationDailyAndHourlyForcast(
            location.coordinates.lat, location.coordinates.lon);

    final Weather weather = WeatherMapper.mapWeather(
        locationResponse: location,
        weatherHourlyResponse: fullWeatherResponse.weatherHourlyResponse,
        weatherDailyResponse: fullWeatherResponse.weatherDailyResponse);

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
