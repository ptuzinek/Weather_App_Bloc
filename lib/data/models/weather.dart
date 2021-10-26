import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:weather_app_bloc/data/models/weather_hourly.dart';

class Weather extends Equatable {
  final dynamic lat;
  final dynamic lon;
  final String cityName;
  final dynamic temperature;
  final int conditionScore;
  final dynamic windSpeed;
  final int cloudiness;
  final int pressure;
  final String weatherIconId;
  final String weatherDescription;
  final List<WeatherHourly> weatherHourlyList;

  Weather({
    this.lat,
    this.lon,
    required this.cityName,
    required this.temperature,
    required this.conditionScore,
    required this.windSpeed,
    required this.cloudiness,
    required this.pressure,
    required this.weatherIconId,
    required this.weatherDescription,
    required this.weatherHourlyList,
  });

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lon': lon,
      'cityName': cityName,
      'temperature': temperature,
      'conditionScore': conditionScore,
      'windSpeed': windSpeed,
      'cloudiness': cloudiness,
      'pressure': pressure,
      'weatherIconId': weatherIconId,
      'weatherDescription': weatherDescription,
      'weatherHourlyList': weatherHourlyList,
    };
  }

// For reading from device storage
  factory Weather.fromMapBloc(Map<String, dynamic> map) {
    return Weather(
      lat: map['lat'],
      lon: map['lon'],
      cityName: map['cityName'],
      temperature: map['temperature'],
      conditionScore: map['conditionScore'],
      windSpeed: map['windSpeed'],
      cloudiness: map['cloudiness'],
      pressure: map['pressure'],
      weatherIconId: map['weatherIconId'],
      weatherDescription: map['weatherDescription'],
      weatherHourlyList: (map['weatherHourlyList'] as List)
          .map((e) => WeatherHourly.fromMapBloc(
              json.decode(e), (map['weatherHourlyList'] as List).indexOf(e)))
          .toList(),
    );
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      lat: map['coord']['lat'],
      lon: map['coord']['lon'],
      cityName: map['name'],
      temperature: map['main']['temp'],
      conditionScore: map['weather'][0]['id'],
      windSpeed: map['wind']['speed'],
      cloudiness: map['clouds']['all'],
      pressure: map['main']['pressure'],
      weatherIconId: map['weather'][0]['icon'],
      weatherDescription: map['weather'][0]['description'],
      weatherHourlyList: [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) {
    return Weather.fromMap(json.decode(source));
  }

  @override
  String toString() {
    return 'Weather(lat: $lat, lon: $lon, cityName: $cityName, temperature: $temperature, conditionScore: $conditionScore, windSpeed: $windSpeed, cloudiness: $cloudiness, pressure: $pressure, weatherIconId: $weatherIconId, weatherDescription: $weatherDescription, weatherHourlyList: ${weatherHourlyList.length})';
  }

  String calculateCelsius(dynamic temperature) =>
      num.parse((temperature - 273).toStringAsFixed(0)).toString();

  String calculateFahrenheit(double temperature) =>
      num.parse((1.8 * (temperature - 273) + 32).toStringAsFixed(1)).toString();

  @override
  List<Object?> get props => [
        lat,
        lon,
        cityName,
        temperature,
        conditionScore,
        windSpeed,
        cloudiness,
        pressure,
        weatherIconId,
        weatherDescription,
        weatherHourlyList,
      ];

  Weather copyWith({
    dynamic lat,
    dynamic lon,
    String? cityName,
    dynamic temperature,
    int? conditionScore,
    dynamic windSpeed,
    int? cloudiness,
    int? pressure,
    String? weatherIconId,
    String? weatherDescription,
    List<WeatherHourly>? weatherHourlyList,
  }) {
    return Weather(
      lat: lat ?? this.lat,
      lon: lon ?? this.lat,
      cityName: cityName ?? this.cityName,
      temperature: temperature ?? this.temperature,
      conditionScore: conditionScore ?? this.conditionScore,
      windSpeed: windSpeed ?? this.windSpeed,
      cloudiness: cloudiness ?? this.cloudiness,
      pressure: pressure ?? this.pressure,
      weatherIconId: weatherIconId ?? this.weatherIconId,
      weatherDescription: weatherDescription ?? this.weatherDescription,
      weatherHourlyList: weatherHourlyList ?? this.weatherHourlyList,
    );
  }
}
