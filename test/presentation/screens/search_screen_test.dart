import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';
import 'package:weather_app_bloc/presentation/screens/search_screen.dart';

class MockWeatherBloc extends Mock implements WeatherBloc {}

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
    )
];

final weather = Weather(
  lat: 33.44,
  lon: -94.04,
  cityName: 'Chicago',
  weatherHourlyList: weatherHourlyList,
  timezoneOffset: -21600,
);

void main() {
  group('SearchScreen', () {
    late WeatherBloc weatherBloc;
    late FavoriteCitiesCubit favoritesCubit;

    setUp(() {
      weatherBloc = MockWeatherBloc();
      favoritesCubit = MockFavoriteCitiesCubit();
    });

    testWidgets('is routable', (tester) async {
      await tester.pumpWidget(MaterialApp(
        onGenerateRoute: AppRouter().onGenerateRoute,
        home: Builder(
            builder: (context) => Scaffold(
                  floatingActionButton: FloatingActionButton(
                    onPressed: () => Navigator.pushNamed(context, '/search'),
                  ),
                )),
      ));
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(SearchScreen), findsOneWidget);
    });

    testWidgets(
        'adds CityWeatherRequested event to the WeatherBloc and calls addCityToFavorite on FavoriteCitiesCubit when suggestion is tapped',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => favoritesCubit.stream)
          .thenAnswer((_) => Stream.fromIterable([FavoriteCitiesInitial()]));

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider.value(value: weatherBloc),
            BlocProvider.value(value: favoritesCubit),
          ],
          child: MaterialApp(
            onGenerateRoute: AppRouter().onGenerateRoute,
            home: Builder(builder: (context) => SearchScreen()),
          ),
        ),
      );
      await tester.pumpAndSettle(Duration(seconds: 1));

      // enter text in the text field
      await tester.enterText(find.byKey(ValueKey('TextField')), 'tokyo');
      // pump and settle
      await tester.pumpAndSettle(Duration(seconds: 1));
      // tap first ListView
      await tester.tap(find.byType(ListTile));

      verify(() => weatherBloc.add(CityWeatherRequested(cityName: 'Tokyo')))
          .called(1);
      verify(() => favoritesCubit.addCityToFavorite('Tokyo')).called(1);
    });

    testWidgets('pop screen to HomeScreen when cancel is tapped',
        (tester) async {
      when(() => weatherBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([WeatherFetchSuccess(weather: weather)]));
      when(() => weatherBloc.state)
          .thenReturn(WeatherFetchSuccess(weather: weather));

      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherBloc,
          child: MaterialApp(
            onGenerateRoute: AppRouter().onGenerateRoute,
            home: Builder(builder: (context) => HomeScreen()),
          ),
        ),
      );
      await tester.tap(find.byKey(ValueKey('search')));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('cancelButton')));
      await tester.pumpAndSettle();

      expect(find.byType(WeatherPopulated), findsOneWidget);
    });
  });
}
