import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/day_weather.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

import 'package:mocktail/mocktail.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/favorites_screen.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';

import '../../helpers/hydrated_bloc.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockFavoriteCitiesCubit extends Mock implements FavoriteCitiesCubit {}

class MockWeatherBloc extends Mock implements WeatherBloc {}

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
    )
];

List<DayWeather> weatherDailyList = [
  for (int i = 0; i < 8; ++i)
    DayWeather(
      dayTemperature: 279.79,
      nightTemperature: 275.09,
      precipitationProbability: 0.2,
      weatherIconId: '10d',
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

final favoriteCitiesList = [weather];

void main() {
  group('FavoritesScreen', () {
    late WeatherRepository weatherRepository;
    late WeatherBloc weatherBloc;
    late FavoriteCitiesCubit favoritesCubit;

    setUp(() {
      weatherRepository = MockWeatherRepository();
      weatherBloc = MockWeatherBloc();
      favoritesCubit = MockFavoriteCitiesCubit();
    });

    testWidgets('state is cashed', (tester) async {
      final storage = MockStorage();
      when(() => storage.read('FavoriteCitiesCubit')).thenReturn(
          FavoriteCitiesFetchSuccess(favoriteCitiesWeather: favoriteCitiesList)
              .toJson());
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: favoriteCitiesList));
      when(() => favoritesCubit.stream).thenAnswer((_) => Stream.fromIterable([
            FavoriteCitiesFetchSuccess(
                favoriteCitiesWeather: favoriteCitiesList)
          ]));

      await mockHydratedStorage(
          () async => await tester.pumpWidget(BlocProvider.value(
                value: favoritesCubit,
                child: MaterialApp(
                  home: Builder(builder: (context) {
                    return FavoritesScreen();
                  }),
                ),
              )));
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets(
        'Renders NoFavoriteCities widget for FavoriteCitiesInitial state',
        (tester) async {
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesInitial());
      when(() => favoritesCubit.stream)
          .thenAnswer((_) => Stream.fromIterable([FavoriteCitiesInitial()]));

      await tester.pumpWidget(BlocProvider.value(
        value: favoritesCubit,
        child: MaterialApp(
          home: FavoritesScreen(),
        ),
      ));

      expect(find.byType(NoFavoriteCities), findsOneWidget);
    });

    testWidgets(
        'Renders FavoriteCitiesLoading widget for FavoriteCitiesFetchInProgress state',
        (tester) async {
      when(() => favoritesCubit.state)
          .thenReturn(FavoriteCitiesFetchInProgress());
      when(() => favoritesCubit.stream).thenAnswer(
          (_) => Stream.fromIterable([FavoriteCitiesFetchInProgress()]));

      await tester.pumpWidget(BlocProvider.value(
        value: favoritesCubit,
        child: MaterialApp(
          home: FavoritesScreen(),
        ),
      ));

      expect(find.byType(FavoriteCitiesLoading), findsOneWidget);
    });

    testWidgets(
        'Renders FavoriteListPopulated widget for FavoriteCitiesFetchSuccess state',
        (tester) async {
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: favoriteCitiesList));
      when(() => favoritesCubit.stream).thenAnswer((_) => Stream.fromIterable([
            FavoriteCitiesFetchSuccess(
                favoriteCitiesWeather: favoriteCitiesList)
          ]));

      await tester.pumpWidget(BlocProvider.value(
        value: favoritesCubit,
        child: MaterialApp(
          home: FavoritesScreen(),
        ),
      ));

      expect(find.byType(FavoriteListPopulated), findsOneWidget);
    });

    testWidgets(
        'Renders FavoriteCitiesFailure widget for FavoriteCitiesFetchFailure state',
        (tester) async {
      when(() => favoritesCubit.state)
          .thenReturn(FavoriteCitiesFetchFailure(error: 'error'));
      when(() => favoritesCubit.stream).thenAnswer((_) =>
          Stream.fromIterable([FavoriteCitiesFetchFailure(error: 'error')]));

      await tester.pumpWidget(BlocProvider.value(
        value: favoritesCubit,
        child: MaterialApp(
          home: FavoritesScreen(),
        ),
      ));

      expect(find.byType(FavoriteCitiesFailure), findsOneWidget);
    });

    // Goes to the HomeScreen on List element tap
    testWidgets('Navigates to HomeScreen when ListTile is tapped',
        (tester) async {
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: favoriteCitiesList));
      when(() => favoritesCubit.stream).thenAnswer((_) => Stream.fromIterable([
            FavoriteCitiesFetchSuccess(
                favoriteCitiesWeather: favoriteCitiesList)
          ]));
      when(() => favoritesCubit.getFavoriteCitiesList())
          .thenAnswer((_) async => {});
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));

      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: favoritesCubit,
          ),
          BlocProvider.value(
            value: weatherBloc,
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: AppRouter().onGenerateRoute,
          home: HomeScreen(),
        ),
      ));
      // tap list IconButton in HomeScreen
      await tester.tap(find.byKey(ValueKey('list')));
      await tester.pumpAndSettle();
      // tap list ListTile in FavoritesScreen
      await tester.tap(find.byKey(ValueKey('listTileTap0')));
      await tester.pumpAndSettle();

      expect(find.byType(WeatherPopulated), findsOneWidget);
    });

    // removes element on slide and tap
    testWidgets('Removes ListTile when delete icon is tapped', (tester) async {
      when(() => favoritesCubit.state).thenReturn(FavoriteCitiesFetchSuccess(
          favoriteCitiesWeather: favoriteCitiesList));
      when(() => favoritesCubit.stream).thenAnswer((_) => Stream.fromIterable([
            FavoriteCitiesFetchSuccess(
                favoriteCitiesWeather: favoriteCitiesList)
          ]));
      when(() => weatherRepository.removeFavoriteCity(weather.cityName))
          .thenAnswer((_) async {});
      final storage = MockStorage();
      final Map<String, dynamic> jsonRead =
          FavoriteCitiesFetchSuccess(favoriteCitiesWeather: favoriteCitiesList)
              .toJson();
      when<dynamic>(() => storage.read('FavoriteCitiesCubit'))
          .thenReturn(jsonRead);
      when(() => storage.write(any(), any<dynamic>())).thenAnswer((_) async {});

      await mockHydratedStorage(
        () async {
          await tester.pumpWidget(BlocProvider.value(
            value: FavoriteCitiesCubit(weatherRepository: weatherRepository),
            child: MaterialApp(
              onGenerateRoute: AppRouter().onGenerateRoute,
              home: FavoritesScreen(),
            ),
          ));
          await tester.drag(find.byType(Slidable), Offset(-500, 0));
          await tester.pump();
          await tester.tap(find.byKey(ValueKey('IconSlideAction0')));
        },
        storage: storage,
      );
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNothing);
    });
  });
}
