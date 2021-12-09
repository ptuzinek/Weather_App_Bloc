import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_bloc/data/api/models/daily_and_hourly_weather.dart';
import 'package:weather_app_bloc/data/api/models/location_response.dart';
import 'package:weather_app_bloc/data/api/models/weather_daily_response.dart';
import 'package:weather_app_bloc/data/api/models/weather_hourly_response.dart';
import 'package:weather_app_bloc/data/constants/api_keys.dart' as ApiKeys;

/// Exception thrown when getCityLocation fails.
class LocationRequestFailure implements Exception {}

/// Exception thrown when getLocationHourlyForcast fails.
class WeatherRequestFailure implements Exception {}

class OpenWeatherApiClient {
  Future<LocationResponse> getCityLocation(String cityName) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));
    if (response.statusCode == 200) {
      final weather = LocationResponse.fromJson(json.decode(response.body));
      return weather;
    } else {
      throw LocationRequestFailure();
    }
  }

  Future<FullWeatherResponse> getLocationDailyAndHourlyForcast(
      double lat, double lon) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=current,minutely,alerts&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      final weatherHourlyResponse =
          WeatherHourlyResponse.fromJson(json.decode(response.body));
      final weatherDailyResponse =
          WeatherDailyResponse.fromJson(json.decode(response.body));
      return FullWeatherResponse(
        weatherHourlyResponse: weatherHourlyResponse,
        weatherDailyResponse: weatherDailyResponse,
      );
    } else {
      throw WeatherRequestFailure();
    }
  }

  Future<LocationResponse> getLocationInfo(double lat, double lon) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

    if (response.statusCode == 200) {
      final weather = LocationResponse.fromJson(json.decode(response.body));
      return weather;
    } else {
      throw LocationRequestFailure();
    }
  }

  Future<Position> getLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
  }
}
