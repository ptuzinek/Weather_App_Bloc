import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_new_bloc/weather_new_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/presentation/widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xFF889EAF),
        bottomNavigationBar: BottomAppBar(
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
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor:
                    Color(0xFF889EAF), //Color(0xFF334756), //Color(0xFF6E85B2),
                expandedHeight: 255,
                collapsedHeight: 90,
                floating: false,
                pinned: true,
                snap: false,
                flexibleSpace: BlocBuilder<WeatherNewBloc, WeatherNewState>(
                  builder: (context, state) {
                    if (state is WeatherFetchSuccess ||
                        state is WeatherFetchInProgress) {
                      return FlexibleSpaceBar(
                        titlePadding: EdgeInsets.only(top: 20),
                        collapseMode: CollapseMode.parallax,
                        centerTitle: true,
                        title: Align(
                          alignment:
                              // Control the top padding when there is a notch or not
                              MediaQuery.of(context).viewPadding.top > 30
                                  ? Alignment(0, 0.1)
                                  : Alignment(0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              state is WeatherFetchInProgress
                                  ? Text(state.cityName)
                                  : Text((state as WeatherFetchSuccess)
                                      .weather
                                      .cityName),
                              SizedBox(height: 3),
                              state is WeatherFetchInProgress
                                  ? Container()
                                  : Text(
                                      (state as WeatherFetchSuccess)
                                          .weather
                                          .weatherHourlyList[0]
                                          .weatherDescription,
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white70),
                                    )
                            ],
                          ),
                        ),
                        background: state is WeatherFetchInProgress
                            ? Container()
                            : Align(
                                alignment: Alignment.center,
                                child: Align(
                                  alignment: Alignment(0, 0.5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${(state as WeatherFetchSuccess).weather.calculateCelsius(state.weather.weatherHourlyList[0].temperature)}°',
                                        style: TextStyle(fontSize: 75),
                                      ),
                                      Image.asset(
                                          'images/weather_icons/${state.weather.weatherHourlyList[0].weatherIconId == '03d' ? '02d' : state.weather.weatherHourlyList[0].weatherIconId}.png'),
                                    ],
                                  ),
                                )),
                      );
                    } else {
                      return Center(
                          child: Text('Getting Localisation Weather...'));
                    }
                  },
                ),
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Center(
              child: BlocBuilder<WeatherNewBloc, WeatherNewState>(
                builder: (context, state) {
                  if (state is WeatherFetchInProgress) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                      ],
                    );
                  } else if (state is WeatherLocalisationFetchInProgress) {
                    return CircularProgressIndicator();
                  } else if (state is WeatherFetchSuccess) {
                    final currentWeather = state.weather.weatherHourlyList[0];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        state.weather.weatherHourlyList.isNotEmpty
                            ? WeatherSlider(
                                weather: state.weather,
                              )
                            : Column(
                                children: [
                                  Container(
                                    height: 0.3,
                                    width: double.infinity,
                                    color: Colors.white,
                                  ),
                                  Container(height: 105),
                                  Container(
                                    height: 0.3,
                                    width: double.infinity,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                        SizedBox(
                          height: 200,
                        ),
                        Text('Weather in ${state.weather.cityName}'),
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                            'Temperature: ${state.weather.calculateCelsius(currentWeather.temperature)} °C'),
                        SizedBox(
                          height: 200,
                        ),
                        Text('Cloudiness: ${currentWeather.cloudiness} %'),
                        SizedBox(
                          height: 200,
                        ),
                        Text('Pressure: ${currentWeather.pressure} hPa'),
                        SizedBox(
                          height: 200,
                        ),
                        Text('Wind Speed: ${currentWeather.windSpeed} m/s'),
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                            'Description: ${currentWeather.weatherDescription}'),
                      ],
                    );
                  } else {
                    return CircularProgressIndicator(
                      color: Colors.grey[850],
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
