import 'package:flutter/material.dart';
import 'package:weather_app_bloc/data/models/weather.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({Key? key, required this.weather}) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().weekday;

    List<TableRow> rows = [];
    for (int i = 0; i < 7; ++i) {
      rows.add(
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Text(weekday((date + i) % 7 + 1)),
            ),
            Table(
              columnWidths: {
                0: FractionColumnWidth(0.4),
                1: FractionColumnWidth(0.1)
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 30,
                      child: Image.asset(
                        'images/weather_icons/${weather.weatherDailyList[i + 1].weatherIconId}.png',
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    Opacity(
                      opacity: weather.weatherDailyList[i + 1]
                                  .precipitationProbability >
                              0
                          ? 1.0
                          : 0.0,
                      child: Text(
                        precipitationProbabilityProcentage(i),
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Table(
              columnWidths: {
                0: FractionColumnWidth(0.2),
                1: FractionColumnWidth(0.1)
              },
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(weather.calculateCelsius(
                            weather.weatherDailyList[i + 1].dayTemperature)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          weather.calculateCelsius(
                              weather.weatherDailyList[i + 1].nightTemperature),
                          style: TextStyle(color: Colors.grey[350]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
    return Table(
      children: rows,
    );
  }

  String precipitationProbabilityProcentage(int i) {
    final precipitationProbability =
        weather.weatherDailyList[i + 1].precipitationProbability;

    final procentage = (((precipitationProbability * 100)) / 10).ceil() * 10;
    return '$procentage %';
  }

  String weekday(int dayNumer) {
    switch (dayNumer) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'Monday';
    }
  }
}
