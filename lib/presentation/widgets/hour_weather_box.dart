import 'package:flutter/material.dart';

class HourWeatherBox extends StatelessWidget {
  final int hour;
  final int temperature;
  final String asset;
  const HourWeatherBox(
      {Key? key,
      required this.hour,
      required this.temperature,
      required this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 12, right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: Text(hour.toString())),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 4),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(asset),
            ),
          ),
          Flexible(child: Text('${temperature.toString()}°')),
        ],
      ),
    );
  }
}
