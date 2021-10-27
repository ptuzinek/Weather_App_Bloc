part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {}

class WeatherInitial extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherFetchSuccess extends WeatherState {
  final Weather weather;

  WeatherFetchSuccess({required this.weather});

  @override
  List<Object?> get props => [weather];
}

class WeatherLocalisationFetchInProgress extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherCityNameFetchInProgress extends WeatherState {
  final String cityName;

  WeatherCityNameFetchInProgress({required this.cityName});

  @override
  List<Object?> get props => [];
}

class WeatherFetchFailure extends WeatherState {
  final Object error;

  WeatherFetchFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
