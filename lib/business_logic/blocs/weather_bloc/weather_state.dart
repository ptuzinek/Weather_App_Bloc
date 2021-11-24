part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.weatherFetchSuccess({
    required Weather weather,
  }) = WeatherFetchSuccess;

  const factory WeatherState.weatherLocalisationFetchInProgress() =
      WeatherLocalisationFetchInProgress;

  const factory WeatherState.weatherFetchInProgress({
    required String cityName,
  }) = WeatherFetchInProgress;

  const factory WeatherState.weatherFetchFailure({
    required Object error,
  }) = WeatherFetchFailure;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}
