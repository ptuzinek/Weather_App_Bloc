import 'package:bloc_test/bloc_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

class MockStorage extends Mock implements Storage {}

late Storage hydratedStorage;

void initHydratedBloc() {
  TestWidgetsFlutterBinding.ensureInitialized();
  hydratedStorage = MockStorage();
  when(() => hydratedStorage.write(any(), any<dynamic>()))
      .thenAnswer((_) async {});
  HydratedBloc.storage = hydratedStorage;
}

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  group('FavoriteCitiesCubit', () {
    late Weather weather;
    late MockWeatherRepository weatherRepository;
    late FavoriteCitiesCubit favoriteCitiesCubit;

    setUp(() {
      initHydratedBloc();

      List<HourWeather> weatherHourlyList = [
        HourWeather(
          timeStamp: 1618317040,
          weatherIconId: '10d',
          temperature: 284.07,
          windSpeed: 6,
          cloudiness: 0,
          pressure: 1019,
          weatherDescription: "few clouds",
        )
      ];

      weather = Weather(
        lat: 33.44,
        lon: -94.04,
        cityName: 'Chicago',
        weatherHourlyList: weatherHourlyList,
        timezoneOffset: -21600,
      );

      final favoriteCitiesList = [weather];

      weatherRepository = MockWeatherRepository();
      when(() => weatherRepository.getFavoriteCitiesWeather())
          .thenAnswer((_) async => favoriteCitiesList);

      favoriteCitiesCubit =
          FavoriteCitiesCubit(weatherRepository: weatherRepository);
    });

    test(
        'The initial state for the FavoriteCitiesCubit is FavoriteCitiesInitial',
        () async {
      expect(
          FavoriteCitiesCubit(weatherRepository: MockWeatherRepository()).state,
          FavoriteCitiesInitial());
    });

    blocTest(
      'The cubit should emit a FavoriteCitiesFetchSuccess with '
      'a list of Weather objects that are in the database when getFavoriteCitiesList method is called',
      build: () =>
          favoriteCitiesCubit, // current instance of a Cubit to make it available for testing
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
      build: () =>
          favoriteCitiesCubit, // current instance of a Cubit to make it available for testing
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

    // Remove from favorites
  });
}
