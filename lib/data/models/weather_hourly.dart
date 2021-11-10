import 'dart:convert';

import 'package:equatable/equatable.dart';

class WeatherHourly extends Equatable {
  final int timeStamp;
  final dynamic temperature;
  final int conditionScore;
  final String weatherIconId;
  final int timeZoneOffset;

  WeatherHourly(
      {required this.timeStamp,
      required this.temperature,
      required this.conditionScore,
      required this.weatherIconId,
      required this.timeZoneOffset});

  Map<String, dynamic> toMap() {
    return {
      'timeStamp': timeStamp,
      'temperature': temperature,
      'conditionScore': conditionScore,
      'weatherIconId': weatherIconId,
      'timeZoneOffset': timeZoneOffset,
    };
  }

// For reading from device storage
  factory WeatherHourly.fromMapBloc(Map<String, dynamic> map, int index) {
    return WeatherHourly(
      timeStamp: map['timeStamp'],
      temperature: map['temperature'],
      conditionScore: map['conditionScore'],
      weatherIconId: map['weatherIconId'],
      timeZoneOffset: map['timeZoneOffset'],
    );
  }

// Reading from the API
  factory WeatherHourly.fromMap(Map<String, dynamic> map, int index) {
    final int temperatureCelsius = num.parse(
            (map['hourly'][index]['temp'].toInt() - 273).toStringAsFixed(0))
        .toInt();
    return WeatherHourly(
      timeStamp: map['hourly'][index]['dt'],
      temperature: temperatureCelsius,
      conditionScore: map['hourly'][index]['weather'][0]['id'],
      weatherIconId: map['hourly'][index]['weather'][0]['icon'],
      timeZoneOffset: map['timezone_offset'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherHourly.fromJson(String source, int index) =>
      WeatherHourly.fromMap(json.decode(source), index);

  @override
  List<Object?> get props =>
      [timeStamp, temperature, conditionScore, weatherIconId, timeZoneOffset];

  String calculateCelsius(dynamic temperature) =>
      num.parse((temperature - 273).toStringAsFixed(0)).toString();
}
