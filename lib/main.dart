import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/api/open_weather_api_client.dart';
import 'package:weather_app_bloc/data/data_providers/favorite_cities_provider.dart';
import 'package:weather_app_bloc/data/database/favorite_cities_database.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';
import 'package:weather_app_bloc/presentation/router/app_router.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';

// Comment for testing CI
void main() async {
  FlutterServicesBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp(
        repository: WeatherRepository(
            weatherApiClient: OpenWeatherApiClient(),
            favoriteCitiesProvider:
                FavoriteCitiesProvider(database: FavoriteCitiesDatabase())))),
    storage: storage,
  );
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
          create: (context) => WeatherBloc(weatherRepository: repository)
            ..add(LocationWeatherRequested()),
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
