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

class WeatherFetchInProgress extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherFetchFailure extends WeatherState {
  final Object error;

  WeatherFetchFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
