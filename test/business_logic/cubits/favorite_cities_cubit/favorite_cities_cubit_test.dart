import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/day_weather.dart';
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
    feelsLike: 280.4,
    humidity: 68,
    precipitationProbability: 0,
    uvi: 1.4,
    visibility: 306,
  )
];

const weatherDailyList = [
  const DayWeather(
    dayTemperature: 279.79,
    nightTemperature: 275.09,
    precipitationProbability: 0.2,
    weatherIconId: '10d',
    maxTemperature: 284.07,
    minTemperature: 275.09,
    sunrise: 1618282134,
    sunset: 1618333901,
  )
];

const weather = Weather(
  lat: 33.44,
  lon: -94.04,
  cityName: 'Chicago',
  weatherHourlyList: weatherHourlyList,
  timezoneOffset: -21600,
  weatherDailyList: weatherDailyList,
);

void main() {
  group('FavoriteCitiesCubit', () {
    late MockWeatherRepository weatherRepository;
    final favoriteCitiesList = [weather];

    setUp(() {
      weatherRepository = MockWeatherRepository();
      when(() => weatherRepository.getFavoriteCitiesWeather())
          .thenAnswer((_) async => favoriteCitiesList);
    });

    test(
        'The initial state for the FavoriteCitiesCubit is FavoriteCitiesInitial',
        () {
      mockHydratedStorage(() {
        final favoritesCubit =
            FavoriteCitiesCubit(weatherRepository: weatherRepository);
        expect(favoritesCubit.state, FavoriteCitiesInitial());
      });
    });

    blocTest(
      'The cubit should emit a FavoriteCitiesFetchSuccess with '
      'a list of Weather objects that are in the database when getFavoriteCitiesList method is called',
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ), // current instance of a Cubit to make it available for testing
      act: (FavoriteCitiesCubit cubit) =>
          cubit.getFavoriteCitiesList(), // takes the cubit and acts on it
      expect: () => [
        FavoriteCitiesFetchSuccess(favoriteCitiesWeather: [weather])
      ], // list with states emitted in order
    );

    // More speciffic test
    blocTest(
      'More speciffic test: The cubit should emit a FavoriteCitiesFetchSuccess with '
      'a list of Weather objects that are in the database when getFavoriteCitiesList method is called',
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ), // current instance of a Cubit to make it available for testing
      act: (FavoriteCitiesCubit cubit) =>
          cubit.getFavoriteCitiesList(), // takes the cubit and acts on it
      expect: () => [
        isA<FavoriteCitiesFetchSuccess>().having(
            (state) => state.favoriteCitiesWeather[0],
            'weather',
            isA<Weather>()
                .having((weather) => weather.cityName, 'cityName', 'Chicago'))
      ], // list with states emitted in order
    );

    // Add to favorites
    blocTest(
      'Cubit emits a FavoriteCitiesFetchSuccess when addCityToFavorite is called. ',
      setUp: () {
        when(() => weatherRepository.addFavoriteCity('Chicago'))
            .thenAnswer((_) async => favoriteCitiesList);
      },
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ),
      act: (FavoriteCitiesCubit cubit) => cubit.addCityToFavorite('Chicago'),
      expect: () => [
        FavoriteCitiesFetchSuccess(favoriteCitiesWeather: [weather]),
      ],
    );

    // Remove from favorites
    blocTest(
      'Cubit emits a FavoriteCitiesInitial when empty list is returned from the repository after removeCityFromFavorites. ',
      setUp: () {
        when(() => weatherRepository.getFavoriteCitiesWeather())
            .thenAnswer((_) async => []);
      },
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ),
      act: (FavoriteCitiesCubit cubit) => cubit.getFavoriteCitiesList(),
      expect: () => [
        FavoriteCitiesInitial(),
      ],
    );

    blocTest(
      'Cubit emits a FavoriteCitiesInitial when empty list is returned from the repository after removeCityFromFavorites. ',
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ),
      act: (FavoriteCitiesCubit cubit) => cubit.getFavoriteCitiesList(),
      expect: () => [
        FavoriteCitiesFetchSuccess(favoriteCitiesWeather: [weather]),
      ],
    );

    // Empty list, return Initial state.
    blocTest(
      'The cubit emits a FavoriteCitiesInitial when empty list is returned from the repository. ',
      setUp: () {
        final List<Weather> favoriteCitiesList = [];
        when(() => weatherRepository.getFavoriteCitiesWeather())
            .thenAnswer((_) async => favoriteCitiesList);
      },
      build: () => mockHydratedStorage(
        () => FavoriteCitiesCubit(weatherRepository: weatherRepository),
      ),
      act: (FavoriteCitiesCubit cubit) => cubit.getFavoriteCitiesList(),
      expect: () => [
        FavoriteCitiesInitial(),
      ],
    );

    // Emits Failure when getFavoriteCitiesWeather throws
    blocTest(
      'The cubit emits a FavoriteCitiesFetchFailure when getFavoriteCitiesWeather throws. ',
      setUp: () {
        when(() => weatherRepository.getFavoriteCitiesWeather())
            .thenThrow('error');
      },
      build: () => mockHydratedStorage(
          () => FavoriteCitiesCubit(weatherRepository: weatherRepository)),
      act: (FavoriteCitiesCubit cubit) => cubit.getFavoriteCitiesList(),
      expect: () => [
        FavoriteCitiesFetchFailure(error: 'error'),
      ],
    );
  });
}
