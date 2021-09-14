import 'package:flutter/material.dart';
import 'package:weather_app_bloc/presentation/screens/favorites_screen.dart';
import 'package:weather_app_bloc/presentation/screens/home_screen.dart';
import 'package:weather_app_bloc/presentation/screens/search_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case '/search':
        return MaterialPageRoute(builder: (_) => SearchScreen());

      case '/favorites':
        return MaterialPageRoute(builder: (_) => FavoritesScreen());

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
