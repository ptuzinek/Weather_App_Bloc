import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_new_bloc/weather_new_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:weather_app_bloc/data/models/weather.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FavoriteCitiesCubit>().state;
    return Scaffold(
      backgroundColor: Color(0xFF334756),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // this makes status bar text color white
        backgroundColor: Color(0xFF334756),
      ),
      body: SafeArea(
          child: state.map(
        favoriteCitiesInitial: (favoritesState) => NoFavoriteCities(),
        favoriteCitiesFetchInProgress: (favoritesState) =>
            FavoriteCitiesLoading(),
        favoriteCitiesFetchSuccess: (favoritesState) => FavoriteListPopulated(
            favoriteCitiesWeather: favoritesState.favoriteCitiesWeather),
        favoriteCitiesFetchFailure: (favoritesState) => FavoriteCitiesFailure(),
      )),
    );
  }
}

class FavoriteCitiesFailure extends StatelessWidget {
  const FavoriteCitiesFailure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Something went wrong.'),
    );
  }
}

class NoFavoriteCities extends StatelessWidget {
  const NoFavoriteCities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite Cities will show up here'),
    );
  }
}

class FavoriteListPopulated extends StatelessWidget {
  const FavoriteListPopulated({
    Key? key,
    required this.favoriteCitiesWeather,
  }) : super(key: key);
  final List<Weather> favoriteCitiesWeather;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteCitiesWeather.length,
      itemBuilder: (context, index) {
        final currentWeather =
            favoriteCitiesWeather[index].weatherHourlyList[0];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Slidable(
            key: ValueKey('listTile$index'),
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            secondaryActions: [
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {
                  context
                      .read<FavoriteCitiesCubit>()
                      .removeCityFromFavorites(favoriteCitiesWeather[index]);
                },
              ),
            ],
            child: ListTile(
              tileColor: Color(0xFF889EAF), // Color(0xFF464660),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              trailing: Image.asset(
                  'images/weather_icons/${currentWeather.weatherIconId == '03d' ? '02d' : currentWeather.weatherIconId}.png'),
              title: Text(favoriteCitiesWeather[index].cityName,
                  style: TextStyle(color: Colors.white)),
              subtitle: Text(
                  '${favoriteCitiesWeather[index].calculateCelsius(currentWeather.temperature)}°C',
                  style: TextStyle(color: Colors.grey[300])),
              onTap: () {
                context.read<WeatherNewBloc>().add(FavoriteCityWeatherRequested(
                    weather: favoriteCitiesWeather[index]));
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }
}

class FavoriteCitiesLoading extends StatelessWidget {
  const FavoriteCitiesLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Loading Favorite Cities..'),
          SizedBox(height: 50),
          CircularProgressIndicator(
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
