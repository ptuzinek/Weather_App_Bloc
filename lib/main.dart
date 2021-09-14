import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/data_providers/favorite_cities_provider.dart';
import 'package:weather_app_bloc/data/data_providers/open_weather_provider.dart';
import 'package:weather_app_bloc/data/database/favorite_cities_database.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';

void main() {
  final OpenWeatherProvider openWeatherProvider = OpenWeatherProvider();
  final FavoriteCitiesDatabase favoriteCitiesDatabase =
      FavoriteCitiesDatabase();
  final FavoriteCitiesProvider favoriteCitiesProvider =
      FavoriteCitiesProvider(database: favoriteCitiesDatabase);
  runApp(MyApp(
    repository: WeatherRepository(
        weatherProvider: openWeatherProvider,
        favoriteCitiesProvider: favoriteCitiesProvider),
  ));
}

class MyApp extends StatelessWidget {
  final WeatherRepository repository;
  final AppRouter _appRouter = AppRouter();

  MyApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(weatherRepository: repository),
        ),
        BlocProvider<FavoriteCitiesCubit>(
          create: (context) =>
              FavoriteCitiesCubit(weatherRepository: repository),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: _appRouter.onGenerateRoute,
        home: HomeScreen(),
      ),
    );
  }
}
