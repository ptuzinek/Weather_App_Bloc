import 'package:weather_app_bloc/data/data_providers/open_weather_provider.dart';
import 'package:weather_app_bloc/data/models/weather.dart';

class WeatherRepository {
  final OpenWeatherProvider weatherProvider;

  WeatherRepository({required this.weatherProvider});

  Future<Weather> getCityWeather(String cityName) async {
    final String rawWeatherData =
        await weatherProvider.getRawCityWeatherData(cityName);

    final Weather weather = Weather.fromJson(rawWeatherData);

    return weather;
  }

  Future<Weather> getLocationWeather(double lat, double lon) async {
    final rawWeatherData =
        await weatherProvider.getRawLocationWeatherData(lat, lon);

    final Weather weather = Weather.fromJson(rawWeatherData);

    return weather;
  }
}
