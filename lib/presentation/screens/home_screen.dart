import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/presentation/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WeatherBloc>().state;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xFF889EAF),
        body: state.map(
          weatherFetchSuccess: (weatherState) =>
              WeatherPopulated(weather: weatherState.weather),
          weatherLocalisationFetchInProgress: (weatherState) =>
              LocalisationWeatherLoading(),
          weatherFetchInProgress: (weatherState) =>
              WeatherLoading(cityName: weatherState.cityName),
          weatherFetchFailure: (weatherState) => WeatherFailure(),
        ),
        bottomNavigationBar: BottomMenu(),
      ),
    );
  }
}

class LocalisationWeatherLoading extends StatelessWidget {
  const LocalisationWeatherLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.grey[850],
      ),
    );
  }
}

class WeatherFailure extends StatelessWidget {
  const WeatherFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Something went wrong.'),
    );
  }
}

class WeatherLoading extends StatelessWidget {
  const WeatherLoading({Key? key, required this.cityName}) : super(key: key);
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 80),
          Text(cityName, style: TextStyle(fontSize: 31)),
          SizedBox(height: 20),
          Text('- -', style: TextStyle(fontSize: 45)),
        ],
      ),
    );
  }
}

class WeatherPopulated extends StatelessWidget {
  const WeatherPopulated({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        FloatingAppBar(weather: weather),
        WeatherContent(weather: weather),
      ],
    );
  }
}

class FloatingAppBar extends StatelessWidget {
  const FloatingAppBar({Key? key, required this.weather}) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFF889EAF),
      expandedHeight: 255,
      collapsedHeight: 90,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(top: 20),
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        title: AppBarTitle(weather: weather),
        background: AppBarBackground(weather: weather),
      ),
    );
  }
}

class AppBarBackground extends StatelessWidget {
  const AppBarBackground({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final weatherList = weather.weatherHourlyList[0];
    return Align(
        alignment: Alignment.center,
        child: Align(
          alignment: Alignment(0, 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${weather.calculateCelsius(weatherList.temperature)}°',
                style: TextStyle(fontSize: 75),
              ),
              Image.asset(
                  'images/weather_icons/${weatherList.weatherIconId}.png'),
            ],
          ),
        ));
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Align(
      // Control the top padding when there is a notch or not
      alignment: MediaQuery.of(context).viewPadding.top > 30
          ? Alignment(0, 0.1)
          : Alignment(0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(weather.cityName),
          SizedBox(height: 3),
          Text(
            weather.weatherHourlyList[0].weatherDescription,
            style: TextStyle(fontSize: 11, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class WeatherContent extends StatelessWidget {
  const WeatherContent({Key? key, required this.weather}) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final currentWeather = weather.weatherHourlyList[0];
    return SliverList(
        delegate: SliverChildListDelegate.fixed([
      WeatherSlider(
        weather: weather,
      ),
      //TODO - Implement WeatherContent UI
      SizedBox(
        height: 100,
      ),
      Center(child: Text('Weather in ${weather.cityName}')),
      SizedBox(
        height: 200,
      ),
      Center(
        child: Text(
            'Temperature: ${weather.calculateCelsius(currentWeather.temperature)} °C'),
      ),
      SizedBox(
        height: 200,
      ),
      Center(child: Text('Cloudiness: ${currentWeather.cloudiness} %')),
      SizedBox(
        height: 200,
      ),
      Center(child: Text('Pressure: ${currentWeather.pressure} hPa')),
      SizedBox(
        height: 200,
      ),
      Center(child: Text('Wind Speed: ${currentWeather.windSpeed} m/s')),
      SizedBox(
        height: 200,
      ),
      Center(child: Text('Description: ${currentWeather.weatherDescription}')),
    ]));
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF889EAF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 0.3,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: IconButton(
                  key: ValueKey('search'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                ),
              ),
              Flexible(
                child: IconButton(
                  key: ValueKey('list'),
                  onPressed: () {
                    BlocProvider.of<FavoriteCitiesCubit>(context)
                        .getFavoriteCitiesList();
                    Navigator.pushNamed(context, '/favorites');
                  },
                  icon: Icon(
                    Icons.list,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
