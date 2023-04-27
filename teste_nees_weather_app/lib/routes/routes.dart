import 'package:flutter/material.dart';
import 'package:teste_nees_weather_app/modules/splash_screen/page.dart';
import 'package:teste_nees_weather_app/modules/weather/page.dart';

class Routes {
  static const String splash = '/splash';
  static const String weather = '/weather';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case weather:
        return MaterialPageRoute(builder: (_) => WeatherScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
