import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherBloc>(context)
        .add(CityWeatherRequested(cityName: 'Warsaw'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherFetchInProgress) {
                return CircularProgressIndicator();
              } else if (state is WeatherFetchSuccess) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Weather in ${state.weather.cityName}'),
                    Text(
                        'Temperature: ${state.weather.calculateCelsius(state.weather.temperature)} °C'),
                    Text('Cloudiness: ${state.weather.cloudiness} %'),
                    Text('Pressure: ${state.weather.pressure} hPa'),
                    Text('Wind Speed: ${state.weather.windSpeed} m/s'),
                    Text('Description: ${state.weather.weatherDescription}'),
                    MaterialButton(
                      onPressed: () => Navigator.pushNamed(context, '/search'),
                      child: Text('Search Cities'),
                    ),
                  ],
                );
              } else {
                return Text('Something went wrong');
              }
            },
          ),
        ),
      ),
    );
  }
}
