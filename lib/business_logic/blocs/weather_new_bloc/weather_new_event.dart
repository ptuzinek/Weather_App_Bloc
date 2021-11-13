part of 'weather_new_bloc.dart';

@freezed
class WeatherNewEvent with _$WeatherNewEvent {
  const factory WeatherNewEvent.cityWeatherRequested({
    required String cityName,
  }) = CityWeatherRequested;

  const factory WeatherNewEvent.locationWeatherRequested() =
      LocationWeatherRequested;

  const factory WeatherNewEvent.favoriteCityWeatherRequested({
    required Weather weather,
  }) = FavoriteCityWeatherRequested;
}
