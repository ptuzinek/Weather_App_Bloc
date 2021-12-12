import 'package:flutter/material.dart';
import 'package:weather_app_bloc/data/models/hour_weather.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/presentation/widgets/hour_weather_box.dart';

class WeatherSlider extends StatelessWidget {
  final Weather weather;
  const WeatherSlider({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherHourly = weather.weatherHourlyList;
    final weatherToday = weather.weatherDailyList[0];
    final sunriseHour = getHourFromDateTime(weatherToday.sunrise);
    final sunsetHour = getHourFromDateTime(weatherToday.sunset);
    final sunriseMinute = getMinuteFromDateTime(weatherToday.sunrise);
    final sunsetMinute = getMinuteFromDateTime(weatherToday.sunset);
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
            itemBuilder: (context, index) {
              final hourWeather = weatherHourly[index];
              final currentHour = getHourFromDateTime(hourWeather.timeStamp);

              final isSunrise = currentHour == sunriseHour;
              final isSunset = currentHour == sunsetHour;

              return buildHourWeatherBox(
                isSunrise: isSunrise,
                isSunset: isSunset,
                currentHour: currentHour,
                hourWeather: hourWeather,
                sunriseHour: sunriseHour,
                sunriseMinute: sunriseMinute,
                sunsetHour: sunsetHour,
                sunsetMinute: sunsetMinute,
              );
            },
          ),
        ),
        Container(
          height: 0.3,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget buildHourWeatherBox({
    required bool isSunrise,
    required bool isSunset,
    required int currentHour,
    required HourWeather hourWeather,
    required int sunriseHour,
    required int sunriseMinute,
    required int sunsetHour,
    required int sunsetMinute,
  }) {
    if (isSunrise) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HourWeatherBox(
            isSunAction: false,
            hour: currentHour,
            minute: 0,
            temperature:
                weather.calculateCelsius(hourWeather.temperature.toInt()),
            asset: 'images/weather_icons/${hourWeather.weatherIconId}.png',
          ),
          HourWeatherBox(
            isSunAction: true,
            hour: sunriseHour,
            minute: sunriseMinute,
            temperature: 'Sunrise',
            asset: 'images/weather_icons/sunrise.png',
          ),
        ],
      );
    } else if (isSunset) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HourWeatherBox(
            isSunAction: false,
            hour: currentHour,
            minute: 0,
            temperature:
                weather.calculateCelsius(hourWeather.temperature.toInt()),
            asset: 'images/weather_icons/${hourWeather.weatherIconId}.png',
          ),
          HourWeatherBox(
            isSunAction: true,
            hour: sunsetHour,
            minute: sunsetMinute,
            temperature: 'Sunset',
            asset: 'images/weather_icons/sunset.png',
          ),
        ],
      );
    } else {
      return HourWeatherBox(
        isSunAction: false,
        hour: currentHour,
        minute: 0,
        temperature: weather.calculateCelsius(hourWeather.temperature.toInt()),
        asset: 'images/weather_icons/${hourWeather.weatherIconId}.png',
      );
    }
  }

  int getHourFromDateTime(int currentTime) {
    return DateTime.fromMillisecondsSinceEpoch(
            (currentTime + weather.timezoneOffset) * 1000)
        .toUtc()
        .hour;
  }

  int getMinuteFromDateTime(int currentTime) {
    return DateTime.fromMillisecondsSinceEpoch(
            (currentTime + weather.timezoneOffset) * 1000)
        .toUtc()
        .minute;
  }
}
