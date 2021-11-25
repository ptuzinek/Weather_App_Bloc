import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

import '../../../helpers/hydrated_bloc.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

const weatherHourlyList = [
  const HourWeather(
    timeStamp: 1618317040,
    weatherIconId: '10d',
    temperature: 284.07,
    windSpeed: 6,
    cloudiness: 0,
    pressure: 1019,
    weatherDescription: "few clouds",
  )
];

const weather = Weather(
  lat: 33.44,
  lon: -94.04,
  cityName: 'Chicago',
  weatherHourlyList: weatherHourlyList,
  timezoneOffset: -21600,
);

void main() {
  group('WeatherBloc', () {
    late MockWeatherRepository weatherRepository;

    setUp(() {
      weatherRepository = MockWeatherRepository();
      when(() => weatherRepository.getCityWeather(weather.cityName))
          .thenAnswer((_) async => weather);
      when(() => weatherRepository.getLocationWeather())
          .thenAnswer((_) async => weather);
    });

    test('Initial state is WeatherLocalisationFetchInProgress', () {
      mockHydratedStorage(() {
        final weatherBloc = WeatherBloc(weatherRepository: weatherRepository);
        expect(weatherBloc.state, WeatherLocalisationFetchInProgress());
      });
    });

    test('toJson and fromJson work properly', () {
      mockHydratedStorage(() {
        final weatherBloc = WeatherBloc(weatherRepository: weatherRepository);
        expect(weatherBloc.fromJson(weatherBloc.toJson(weatherBloc.state)),
            weatherBloc.state);
      });
    });

    group('CityWeatherRequested event', () {
      blocTest(
        'emits [WeatherFetchInProgress, WeatherFetchSuccess] when successful',
        build: () => mockHydratedStorage(
            () => WeatherBloc(weatherRepository: weatherRepository)),
        act: (WeatherBloc weatherBloc) =>
            weatherBloc.add(CityWeatherRequested(cityName: weather.cityName)),
        expect: () => [
          WeatherFetchInProgress(cityName: weather.cityName),
          WeatherFetchSuccess(weather: weather),
        ],
      );

      blocTest(
        'emits [WeatherFetchInProgress, WeatherFetchFailure] when fails',
        build: () {
          when(() => weatherRepository.getCityWeather(weather.cityName))
              .thenThrow('error');
          return mockHydratedStorage(
              () => WeatherBloc(weatherRepository: weatherRepository));
        },
        act: (WeatherBloc weatherBloc) =>
            weatherBloc.add(CityWeatherRequested(cityName: weather.cityName)),
        expect: () => [
          WeatherFetchInProgress(cityName: weather.cityName),
          WeatherFetchFailure(error: 'error'),
        ],
      );
    });

    group('LocationWeatherRequested event', () {
      blocTest(
        'emits [WeatherFetchSuccess] when successful',
        build: () => mockHydratedStorage(
            () => WeatherBloc(weatherRepository: weatherRepository)),
        act: (WeatherBloc weatherBloc) =>
            weatherBloc.add(LocationWeatherRequested()),
        expect: () => [
          WeatherFetchSuccess(weather: weather),
        ],
      );

      blocTest(
        'emits [WeatherFetchFailure] when fails',
        build: () {
          when(() => weatherRepository.getLocationWeather()).thenThrow('error');
          return mockHydratedStorage(
              () => WeatherBloc(weatherRepository: weatherRepository));
        },
        act: (WeatherBloc weatherBloc) =>
            weatherBloc.add(LocationWeatherRequested()),
        expect: () => [
          WeatherFetchFailure(error: 'error'),
        ],
      );
    });

    group('FavoriteCityWeatherRequested event', () {
      blocTest(
        'emits [WeatherFetchSuccess] when successful',
        build: () => mockHydratedStorage(
            () => WeatherBloc(weatherRepository: weatherRepository)),
        act: (WeatherBloc weatherBloc) =>
            weatherBloc.add(FavoriteCityWeatherRequested(weather: weather)),
        expect: () => [
          WeatherFetchSuccess(weather: weather),
        ],
      );
    });
  });
}
