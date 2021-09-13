import 'dart:convert';

class Weather {
  String cityName;
  dynamic temperature;
  int conditionScore;
  dynamic windSpeed;
  int cloudiness;
  int pressure;
  String weatherIconId;
  String weatherDescription;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.conditionScore,
    required this.windSpeed,
    required this.cloudiness,
    required this.pressure,
    required this.weatherIconId,
    required this.weatherDescription,
  });

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
      'temperature': temperature,
      'conditionScore': conditionScore,
      'windSpeed': windSpeed,
      'cloudiness': cloudiness,
      'pressure': pressure,
      'weatherIconId': weatherIconId,
      'weatherDescription': weatherDescription,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      cityName: map['name'],
      temperature: map['main']['temp'],
      conditionScore: map['weather'][0]['id'],
      windSpeed: map['wind']['speed'],
      cloudiness: map['clouds']['all'],
      pressure: map['main']['pressure'],
      weatherIconId: map['weather'][0]['icon'],
      weatherDescription: map['weather'][0]['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) {
    return Weather.fromMap(json.decode(source));
  }

  @override
  String toString() {
    return 'Weather(cityName: $cityName, temperature: $temperature, conditionScore: $conditionScore, windSpeed: $windSpeed, cloudiness: $cloudiness, pressure: $pressure, weatherIconId: $weatherIconId, weatherDescription: $weatherDescription)';
  }

  String calculateCelsius(dynamic temperature) =>
      num.parse((temperature - 273).toStringAsFixed(1)).toString();

  String calculateFahrenheit(double temperature) =>
      num.parse((1.8 * (temperature - 273) + 32).toStringAsFixed(1)).toString();
}
