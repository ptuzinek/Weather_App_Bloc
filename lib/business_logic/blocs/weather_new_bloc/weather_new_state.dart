part of 'weather_new_bloc.dart';

@freezed
class WeatherNewState with _$WeatherNewState {
  const factory WeatherNewState.weatherFetchSuccess({
    required Weather weather,
  }) = WeatherFetchSuccess;

  const factory WeatherNewState.weatherLocalisationFetchInProgress() =
      WeatherLocalisationFetchInProgress;

  const factory WeatherNewState.weatherFetchInProgress({
    required String cityName,
  }) = WeatherFetchInProgress;

  const factory WeatherNewState.weatherFetchFailure({
    required Object error,
  }) = WeatherFetchFailure;

  factory WeatherNewState.fromJson(Map<String, dynamic> json) =>
      _$WeatherNewStateFromJson(json);
}
