import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/data_providers/condition_emoji_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF082032),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        brightness: Brightness.dark, // this makes status bar text color white
        backgroundColor: Color(0xFF082032),
      ),
      body: SafeArea(
        child: BlocBuilder<FavoriteCitiesCubit, FavoriteCitiesState>(
          builder: (context, state) {
            if (state is FavoriteCitiesFetchSuccess) {
              return ListView.builder(
                itemCount: state.favoriteCitiesWeather.length,
                itemBuilder: (context, index) => Padding(
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
                          BlocProvider.of<FavoriteCitiesCubit>(context)
                              .removeCityFromFavorites(
                                  state.favoriteCitiesWeather[index]);
                        },
                      ),
                    ],
                    child: ListTile(
                      tileColor: Color(0xFF464660),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      trailing: Image.asset(
                          'images/weather_icons/${state.favoriteCitiesWeather[index].weatherIconId == '03d' ? '02d' : state.favoriteCitiesWeather[index].weatherIconId}.png'),
                      // Text(
                      //   ConditionEmojiProvider.getWeatherEmoji(
                      //       state.favoriteCitiesWeather[index].conditionScore),
                      //   style: TextStyle(fontSize: 30),
                      // ),
                      title: Text(state.favoriteCitiesWeather[index].cityName,
                          style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                          '${state.favoriteCitiesWeather[index].calculateCelsius(state.favoriteCitiesWeather[index].temperature)}°C',
                          style: TextStyle(color: Colors.grey[300])),
                      onTap: () {
                        BlocProvider.of<WeatherBloc>(context).add(
                            FavoriteCityWeatherRequested(
                                weather: state.favoriteCitiesWeather[index]));
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: Text('No state case'),
              );
            }
          },
        ),
      ),
    );
  }
}
