// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;
// import 'package:weather_app_bloc/data/constants/api_keys.dart' as ApiKeys;

// class OpenWeatherProvider {
//   Future getRawCityWeatherData(String cityName) async {
//     http.Response response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       print(response.statusCode);
//     }
//   }

//   Future getCityHourlyForcast(String cityName) async {
//     http.Response response = await http.get(Uri.parse(
//         'pro.openweathermap.org/data/2.5/forecast/hourly?q=$cityName&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       print(response.statusCode);
//     }
//   }

//   Future getLocationHourlyForcast(double lat, double lon) async {
//     http.Response response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=current,minutely,daily,alerts&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       print(response.statusCode);
//     }
//   }

//   Future getRawLocationWeatherData(double lat, double lon) async {
//     http.Response response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       print(response.statusCode);
//     }
//   }

//   Future<Position> getLocation() async {
//     return await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.medium);
//   }
// }
