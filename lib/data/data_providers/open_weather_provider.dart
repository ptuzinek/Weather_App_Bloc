import 'package:http/http.dart' as http;
import 'package:weather_app_bloc/data/constants/api_keys.dart' as ApiKeys;

class OpenWeatherProvider {
  Future getRawCityWeatherData(String cityName) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }

  Future getRawLocationWeatherData(double lat, double lon) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${ApiKeys.OPEN_WEATHER_MAP_API_KEY}'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}
