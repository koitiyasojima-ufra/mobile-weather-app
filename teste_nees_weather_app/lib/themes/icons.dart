import 'package:flutter/material.dart';
import 'package:teste_nees_weather_app/data/models/forecast_model.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';

class IconFactory {
  static String currently = 'day';

  static Image getWeatherIcon(Weather weather) {
    if (weather.condition_slug.contains('cloud')) {
      return Image.asset(
        'assets/icons/$currently-cloud.png',
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      );
    }

    if (weather.condition_slug.contains('rain')) {
      return Image.asset(
        'assets/icons/$currently-rain.png',
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      );
    }

    return Image.asset(
      'assets/icons/$currently-clean.png',
      width: 150,
      height: 150,
      fit: BoxFit.contain,
    );
  }

  static getForecastIcon(Forecast forecast) {
    if (forecast.condition.contains('cloud')) {
      return Image.asset(
        'assets/icons/cloudy.png',
        width: 24,
        height: 24,
      );
    }

    if (forecast.condition.contains('rain')) {
      return Image.asset(
        'assets/icons/rain.png',
        width: 24,
        height: 24,
      );
    }

    return Image.asset(
      'assets/icons/day-clean.png',
      width: 24,
      height: 24,
    );
  }
}
