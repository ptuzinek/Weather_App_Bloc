import 'package:flutter/material.dart';
import 'package:weather_app_bloc/data/models/weather_hourly.dart';
import 'package:weather_app_bloc/presentation/widgets/hour_weather_box.dart';

class WeatherSlider extends StatelessWidget {
  final List<dynamic> weatherHourlyList;
  const WeatherSlider({Key? key, required this.weatherHourlyList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
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
                        (weatherHourlyList[index].timeStamp +
                                weatherHourlyList[index].timeZoneOffset) *
                            1000)
                    .toUtc()
                    .hour,
                temperature: weatherHourlyList[index].temperature,
                asset:
                    'images/weather_icons/${weatherHourlyList[index].weatherIconId == '03d' ? '02d' : weatherHourlyList[index].weatherIconId}.png',
              ),
            ),
          ),
          Container(
            height: 0.3,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
