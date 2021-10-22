import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
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
  void initState() {
    super.initState();
    BlocProvider.of<WeatherBloc>(context).add(LocationWeatherRequested());
  }

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
                flexibleSpace: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if (state is WeatherFetchSuccess) {
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
                              Text(state.weather.cityName),
                              SizedBox(height: 3),
                              Text(
                                state.weather.weatherDescription,
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                        background: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${state.weather.calculateCelsius(state.weather.temperature)}°',
                                    style: TextStyle(fontSize: 75),
                                  ),
                                  Image.asset(
                                      'images/weather_icons/${state.weather.weatherIconId == '03d' ? '02d' : state.weather.weatherIconId}.png'),
                                ],
                              ),
                            )),
                      );
                    } else {
                      return Center(child: Text('Something went wrong'));
                    }
                  },
                ),
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Center(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherFetchInProgress) {
                    return CircularProgressIndicator();
                  } else if (state is WeatherFetchSuccess) {
                    print('state.weather.weatherHourlyList-----------');

                    print(state.weather.weatherHourlyList);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        state.weather.weatherHourlyList.isNotEmpty
                            ? WeatherSlider(
                                weatherHourlyList:
                                    state.weather.weatherHourlyList,
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

                        // Text(
                        //     'Weather in ${state.weather.weatherHourlyList[0].temperature}'),
                        SizedBox(
                          height: 200,
                        ),
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
    );
  }
}
