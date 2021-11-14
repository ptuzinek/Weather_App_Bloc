import 'package:flutter/material.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/presentation/widgets/hour_weather_box.dart';

class WeatherSlider extends StatelessWidget {
  final Weather weather;
  const WeatherSlider({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherList = weather.weatherHourlyList;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 0.3,
          width: double.infinity,
          color: Colors.white,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: 24,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => HourWeatherBox(
              hour: DateTime.fromMillisecondsSinceEpoch(
                      (weatherList[index].timeStamp + weather.timezoneOffset) *
                          1000)
                  .toUtc()
                  .hour,
              temperature: weather
                  .calculateCelsius(weatherList[index].temperature.toInt()),
              asset:
                  'images/weather_icons/${weatherList[index].weatherIconId == '03d' ? '02d' : weatherList[index].weatherIconId}.png',
            ),
          ),
        ),
        Container(
          height: 0.3,
          color: Colors.white,
        ),
      ],
    );
  }
}
