import 'package:flutter/material.dart';

class HourWeatherBox extends StatelessWidget {
  final isSunAction;
  final int hour;
  final int minute;
  final String temperature;
  final String asset;
  const HourWeatherBox({
    Key? key,
    required this.isSunAction,
    required this.hour,
    required this.temperature,
    required this.asset,
    required this.minute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 12, right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(hourAndMinutes),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 4),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Padding(
                padding: isSunAction
                    ? const EdgeInsets.all(10.0)
                    : const EdgeInsets.all(0),
                child: Image.asset(asset),
              ),
            ),
          ),
          Text(
            isSunAction
                ? '${temperature.toString()}'
                : '${temperature.toString()}°',
          ),
        ],
      ),
    );
  }

  String get hourAndMinutes {
    if (isSunAction) {
      if (hour < 10 && minute < 10) {
        return '0$hour:0$minute';
      } else if (hour >= 10 && minute < 10) {
        return '$hour:0$minute';
      } else if (hour >= 10 && minute >= 10) {
        return '$hour:$minute';
      } else if (hour < 10 && minute >= 10) {
        return '0$hour:$minute';
      } else {
        return '$hour:$minute';
      }
    } else {
      if (hour < 10) {
        return '0$hour';
      } else {
        return '$hour';
      }
    }
  }
}
