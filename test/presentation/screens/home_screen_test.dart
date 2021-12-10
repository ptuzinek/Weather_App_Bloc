import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/day_weather.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/favorites_screen.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';
import 'package:weather_app_bloc/presentation/screens/search_screen.dart';

import '../../helpers/hydrated_bloc.dart';

class MockWeatherBloc extends Mock implements WeatherBloc {}

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockFavoriteCitiesCubit extends Mock implements FavoriteCitiesCubit {}

List<HourWeather> weatherHourlyList = [
  for (var i = 0; i < 24; i += 1)
    HourWeather(
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

List<DayWeather> weatherDailyList = [
  for (int i = 0; i < 8; ++i)
    DayWeather(
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

final weather = Weather(
  lat: 33.44,
  lon: -94.04,
  cityName: 'Chicago',
  weatherHourlyList: weatherHourlyList,
  timezoneOffset: -21600,
  weatherDailyList: weatherDailyList,
);

void main() {
  group('HomeScreen', () {
    late WeatherBloc weatherBloc;
    late FavoriteCitiesCubit favoritesCubit;

    setUp(() {
      weatherBloc = MockWeatherBloc();
      favoritesCubit = MockFavoriteCitiesCubit();
    });

    testWidgets('state is cached', (tester) async {
      final storage = MockStorage();
      final Map<String, dynamic> json =
          WeatherFetchSuccess(weather: weather).toJson();
      when<dynamic>(() => storage.read('WeatherBloc')).thenReturn(json);
      await mockHydratedStorage(() async {
        await tester.pumpWidget(BlocProvider.value(
          value: WeatherBloc(weatherRepository: MockWeatherRepository()),
          child: MaterialApp(
            home: HomeScreen(),
          ),
        ));
      }, storage: storage);
      expect(find.byType(WeatherPopulated), findsOneWidget);
    });

    testWidgets(
        'renders LocalisationWeatherLoading for WeatherLocalisationFetchInProgress',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherLocalisationFetchInProgress()]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherLocalisationFetchInProgress());
      await tester.pumpWidget(BlocProvider.value(
        value: weatherBloc,
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ));
      expect(find.byType(LocalisationWeatherLoading), findsOneWidget);
    });

    testWidgets('renders WeatherPopulated for WeatherFetchSuccess',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));
      await tester.pumpWidget(BlocProvider.value(
        value: weatherBloc,
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ));
      expect(find.byType(WeatherPopulated), findsOneWidget);
    });

    testWidgets('renders WeatherLoading for WeatherFetchInProgress',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer((_) => Stream.fromIterable(
          [WeatherFetchInProgress(cityName: weather.cityName)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchInProgress(cityName: weather.cityName));
      await tester.pumpWidget(BlocProvider.value(
        value: weatherBloc,
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ));
      expect(find.byType(WeatherLoading), findsOneWidget);
    });

    testWidgets('renders WeatherFailure for WeatherFetchFailure',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchFailure(error: 'error')]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchFailure(error: 'error'));
      await tester.pumpWidget(BlocProvider.value(
        value: weatherBloc,
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ));
      expect(find.byType(WeatherFailure), findsOneWidget);
    });

    testWidgets('Navigates to SearchScreen when search icon is tapped',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));
      await tester.pumpWidget(BlocProvider.value(
        value: weatherBloc,
        child: MaterialApp(
            onGenerateRoute: AppRouter().onGenerateRoute, home: HomeScreen()),
      ));
      await tester.tap(find.byKey(ValueKey('search')));
      await tester.pumpAndSettle();
      expect(find.byType(SearchScreen), findsOneWidget);
    });

    testWidgets('Navigates to FavoritesScreen when list icon is tapped',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));
      when(() => favoritesCubit.stream)
          .thenAnswer((_) => Stream.fromIterable([FavoriteCitiesInitial()]));
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesInitial());
      when(() => favoritesCubit.getFavoriteCitiesList())
          .thenAnswer((_) async => {});

      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider.value(value: weatherBloc),
          BlocProvider.value(value: favoritesCubit),
        ],
        child: MaterialApp(
            onGenerateRoute: AppRouter().onGenerateRoute,
            home: Builder(builder: (context) {
              return HomeScreen();
            })),
      ));
      await tester.tap(find.byKey(ValueKey('list')));
      await tester.pumpAndSettle();
      expect(find.byType(FavoritesScreen), findsOneWidget);
    });

    testWidgets('calls getFavoriteCitiesList when list icon is tapped',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));
      when(() => favoritesCubit.stream)
          .thenAnswer((_) => Stream.fromIterable([FavoriteCitiesInitial()]));
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesInitial());
      when(() => favoritesCubit.getFavoriteCitiesList())
          .thenAnswer((_) async => {});
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider.value(value: weatherBloc),
            BlocProvider.value(value: favoritesCubit),
          ],
          child: MaterialApp(
              onGenerateRoute: AppRouter().onGenerateRoute,
              home: Builder(builder: (context) {
                return HomeScreen();
              })),
        ),
      );

      await tester.tap(find.byKey(ValueKey('list')));

      verify(() => favoritesCubit.getFavoriteCitiesList()).called(1);
    });
  });
}
