import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/cubit/favorite_cities_cubit.dart';

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
    BlocProvider.of<WeatherBloc>(context).add(LocationWeatherRequested());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xFF464660),
        bottomNavigationBar: BottomAppBar(
          child: Row(
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
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 180,
                collapsedHeight: 80,
                floating: true,
                pinned: true,
                snap: false,

                flexibleSpace: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if (state is WeatherFetchSuccess) {
                      return FlexibleSpaceBar(
                        titlePadding: EdgeInsets.only(top: 30),
                        stretchModes: const <StretchMode>[
                          StretchMode.fadeTitle,
                          StretchMode.blurBackground,
                          StretchMode.zoomBackground
                        ],
                        centerTitle: true,
                        title: Align(
                            alignment: Alignment(0, 0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(state.weather.cityName),
                                SizedBox(height: 3),
                                Text(
                                  state.weather.weatherDescription,
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white70),
                                )
                              ],
                            )),
                        background: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.7),
                              child: Text(
                                state.weather.calculateCelsius(
                                    state.weather.temperature),
                                style: TextStyle(fontSize: 35),
                              ),
                            )),
                      );
                    } else {
                      return Text('Something went wrong');
                    }
                  },
                ),
                // title: Text('Weight Tracker'),
                // floating: false,
                // snap: false,
                forceElevated: innerBoxIsScrolled,
                // bottom: AppBar(
                //   toolbarHeight: 55,
                //   elevation: 0,
                //   // brightness:
                //   //     Brightness.dark, // this makes device status bar text color white
                //   backgroundColor: Color(0xFF464660),
                //   title: BlocBuilder<WeatherBloc, WeatherState>(
                //     builder: (context, state) {
                //       if (state is WeatherFetchSuccess) {
                //         return Text(state.weather.cityName);
                //       } else {
                //         return Text('');
                //       }
                //     },
                //   ),
                //   leading: IconButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, '/search');
                //     },
                //     icon: Icon(
                //       Icons.search,
                //       color: Colors.white70,
                //     ),
                //   ),
                //   actions: [
                //     IconButton(
                //       onPressed: () {
                //         BlocProvider.of<FavoriteCitiesCubit>(context)
                //             .getFavoriteCitiesList();
                //         Navigator.pushNamed(context, '/favorites');
                //       },
                //       icon: Icon(
                //         Icons.list,
                //         color: Colors.white70,
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ];
          },
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
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
                          SizedBox(
                            height: 200,
                          ),
                          Text(
                              'Temperature: ${state.weather.calculateCelsius(state.weather.temperature)} °C'),
                          SizedBox(
                            height: 200,
                          ),
                          Text('Cloudiness: ${state.weather.cloudiness} %'),
                          SizedBox(
                            height: 200,
                          ),
                          Text('Pressure: ${state.weather.pressure} hPa'),
                          SizedBox(
                            height: 200,
                          ),
                          Text('Wind Speed: ${state.weather.windSpeed} m/s'),
                          SizedBox(
                            height: 200,
                          ),
                          Text(
                              'Description: ${state.weather.weatherDescription}'),
                        ],
                      );
                    } else {
                      return Text('Something went wrong');
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
