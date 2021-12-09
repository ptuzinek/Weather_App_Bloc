import 'package:weather_app_bloc/data/api/models/weather_daily_response.dart';
import 'package:weather_app_bloc/data/api/models/weather_hourly_response.dart';

class FullWeatherResponse {
  final WeatherHourlyResponse weatherHourlyResponse;
  final WeatherDailyResponse weatherDailyResponse;

  FullWeatherResponse({
    required this.weatherHourlyResponse,
    required this.weatherDailyResponse,
  });
}
