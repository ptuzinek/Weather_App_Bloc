import 'package:weather_app_bloc/data/constants/city_names.dart';
import 'package:weather_app_bloc/data/models/city.dart';

class CityService {
  List<City> getSuggestions(String query) {
    List<String> queryResult = cityNames.where((city) {
      final cityLower = city.toLowerCase();
      final queryLower = query.toLowerCase();

      return cityLower.contains(queryLower);
    }).toList();

    if (queryResult.isNotEmpty) {
      List<String> queryResultSublist = [];
      if (queryResult.length > 8) {
        queryResultSublist = queryResult.sublist(0, 8);
      } else {
        queryResultSublist = queryResult;
      }
      // 3 cities String
      // Create a list with City objects with set text properties to each
      // part of the word
      List<City> cityListResult = [];
      for (String word in queryResultSublist) {
        String textWithoutQuery =
            word.toLowerCase().replaceFirst(query.toLowerCase(), '--');
        String text1 = textWithoutQuery.replaceAll(RegExp(r'--.+|--'), '');
        String text3 = textWithoutQuery.replaceAll(RegExp(r'.+--|--'), '');
        query = query.toLowerCase();

        // Make the second word start from the Upper Case

        if (text1.isNotEmpty) {
          text1 = text1.replaceFirst(
              text1.substring(0, 1), text1.substring(0, 1).toUpperCase());
        } else if (query.isNotEmpty) {
          query = query.replaceFirst(
              query.substring(0, 1), query.substring(0, 1).toUpperCase());
        } else {
          text3 = text3.replaceFirst(
              text3.substring(0, 1), text3.substring(0, 1).toUpperCase());
        }

        if (text3.contains(' ')) {
          int whiteSpaceIndex = text3.indexOf(' ');
          String letterToBeChanged =
              text3.substring(whiteSpaceIndex + 1, whiteSpaceIndex + 2);
          text3 = text3.replaceFirst(
              ' $letterToBeChanged', ' ${letterToBeChanged.toUpperCase()}');
        }

        if (query.contains(' ')) {
          int whiteSpaceIndex = query.indexOf(' ');
          String letterToBeChanged =
              query.substring(whiteSpaceIndex + 1, whiteSpaceIndex + 2);
          query = query.replaceFirst(
              ' $letterToBeChanged', ' ${letterToBeChanged.toUpperCase()}');
        }

        // print('-----------------------------------------------');

        // print('text1: $text1');
        // print('query: $query');
        // print('text3: $text3');

        City city = City(text1: text1, text2: query, text3: text3);
        cityListResult.add(city);
      }
      return cityListResult;
    } else {
      return [];
    }
  }
}
