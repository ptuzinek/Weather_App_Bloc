import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/data/data_providers/open_weather_provider.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';

void main() {
  final OpenWeatherProvider openWeatherProvider = OpenWeatherProvider();
  runApp(MyApp(
    repository: WeatherRepository(weatherProvider: openWeatherProvider),
  ));
}

class MyApp extends StatelessWidget {
  final WeatherRepository repository;
  final AppRouter _appRouter = AppRouter();

  MyApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (context) => WeatherBloc(weatherRepository: repository),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: _appRouter.onGenerateRoute,
        home: HomeScreen(),
      ),
    );
  }
}
