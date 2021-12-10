import 'package:flutter/material.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/presentation/widgets/horizontal_line.dart';

// Description:
// description -> HOURLY, max temp, min temp -> DAILY
// Table:
// Sunrise time, Sunset time -> DAILY, Rain possibility, Hummidity, Wind,
// Feels like temperature, Rain Volume, Pressure, Visibility, UV index -> HOURLY
class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({Key? key, required this.weather}) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final currentWeather = weather.weatherHourlyList[0];
    final todayWeather = weather.weatherDailyList[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 15, bottom: 15, right: 15.0),
          child: Text(
            'Today: ${currentWeather.weatherDescription[0].toUpperCase()}'
            '${currentWeather.weatherDescription.substring(1)} recently. '
            'Maximum daily Temperature: ${weather.calculateCelsius(todayWeather.maxTemperature)}°C. '
            'Minimum daily Temperature: ${weather.calculateCelsius(todayWeather.minTemperature)}°C.',
            textAlign: TextAlign.start,
            style: TextStyle(
              height: 1.3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        HorizontalLine(),
        Table(
          children: [
            tableRow(
              label1: 'SUNRISE',
              label2: 'SUNSET',
              content1: sunTime(todayWeather.sunrise),
              content2: sunTime(todayWeather.sunset),
            ),
            TableRow(children: [HorizontalLine(), HorizontalLine()]),
            tableRow(
              label1: 'POSSIBLE PRECIPITATION',
              label2: 'HUMIDITY',
              content1: precipitationProbabilityProcentage(
                  todayWeather.precipitationProbability),
              content2: '${currentWeather.humidity} %',
            ),
            TableRow(children: [HorizontalLine(), HorizontalLine()]),
            tableRow(
              label1: 'WIND SPEED',
              label2: 'FEELS LIKE TEMPERATURE',
              content1: '${currentWeather.windSpeed} m/s',
              content2:
                  '${weather.calculateCelsius(currentWeather.feelsLike)} °C',
            ),
            TableRow(children: [HorizontalLine(), HorizontalLine()]),
            tableRow(
              label1: 'PRESSURE',
              label2: 'VISIBILITY',
              content1: '${currentWeather.pressure} hPa',
              content2: '${currentWeather.visibility / 1000} km',
            ),
            TableRow(children: [HorizontalLine(), HorizontalLine()]),
            tableRow(
              label1: 'UV INDEX',
              label2: 'CLOUDINESS',
              content1: '${currentWeather.uvi}',
              content2: '${currentWeather.cloudiness} %',
            ),
          ],
        )
      ],
    );
  }

  TableRow tableRow({
    required String label1,
    required String label2,
    required String content1,
    required String content2,
  }) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label1,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                content1,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label2,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                content2,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String precipitationProbabilityProcentage(double precipitationProbability) {
    final procentage = (((precipitationProbability * 100)) / 10).ceil() * 10;
    return '$procentage %';
  }

  String sunTime(int time) {
    final hour = DateTime.fromMillisecondsSinceEpoch(
            (time + weather.timezoneOffset) * 1000)
        .toUtc()
        .hour;
    final minute = DateTime.fromMillisecondsSinceEpoch(
            (time + weather.timezoneOffset) * 1000)
        .toUtc()
        .minute;

    return '$hour:$minute';
  }
}
