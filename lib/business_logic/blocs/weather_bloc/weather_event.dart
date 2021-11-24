part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.cityWeatherRequested({
    required String cityName,
  }) = CityWeatherRequested;

  const factory WeatherEvent.locationWeatherRequested() =
      LocationWeatherRequested;

  const factory WeatherEvent.favoriteCityWeatherRequested({
    required Weather weather,
  }) = FavoriteCityWeatherRequested;
}
