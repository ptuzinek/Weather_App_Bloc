import 'package:weather_app_bloc/data/api/models/day_weather_response.dart';
import 'package:weather_app_bloc/data/api/models/hour_weather_response.dart';
import 'package:weather_app_bloc/data/api/models/location_response.dart';
import 'package:weather_app_bloc/data/api/models/weather_daily_response.dart';
import 'package:weather_app_bloc/data/api/models/weather_hourly_response.dart';
import 'package:weather_app_bloc/data/models/day_weather.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';

class WeatherMapper {
  static Weather mapWeather({
    required WeatherHourlyResponse weatherHourlyResponse,
    required WeatherDailyResponse weatherDailyResponse,
    required LocationResponse locationResponse,
  }) =>
      Weather(
        lat: locationResponse.coordinates.lat,
        lon: locationResponse.coordinates.lon,
        cityName: locationResponse.name,
        timezoneOffset: weatherHourlyResponse.timezoneOffset,
        weatherHourlyList: weatherHourlyResponse.weatherHourly
            .map((hourWeatherResponse) => _mapHourWeather(hourWeatherResponse))
            .toList(),
        weatherDailyList: weatherDailyResponse.weatherDaily
            .map((dayWeatherResponse) => _mapDayWeather(dayWeatherResponse))
            .toList(),
      );

  static HourWeather _mapHourWeather(HourWeatherResponse hourWeatherResponse) =>
      HourWeather(
        timeStamp: hourWeatherResponse.timeStamp,
        temperature: hourWeatherResponse.temperature,
        windSpeed: hourWeatherResponse.windSpeed,
        cloudiness: hourWeatherResponse.cloudiness,
        pressure: hourWeatherResponse.pressure,
        weatherIconId: hourWeatherResponse.weather[0].weatherIconId,
        weatherDescription: hourWeatherResponse.weather[0].description,
      );

  static DayWeather _mapDayWeather(DayWeatherResponse dayWeatherResponse) =>
      DayWeather(
        dayTemperature: dayWeatherResponse.temperature.day,
        nightTemperature: dayWeatherResponse.temperature.night,
        weatherIconId: dayWeatherResponse.weather[0].weatherIconId,
        precipitationProbability: dayWeatherResponse.precipitationProbability,
      );
}
