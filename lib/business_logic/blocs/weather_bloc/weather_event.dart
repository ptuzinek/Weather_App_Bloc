part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CityWeatherRequested extends WeatherEvent {
  final String cityName;

  CityWeatherRequested({required this.cityName});

  @override
  List<Object> get props => [cityName];
}

class LocationWeatherRequested extends WeatherEvent {
  @override
  List<Object> get props => [];
}
