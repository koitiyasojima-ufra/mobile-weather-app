import 'package:flutter/material.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';
import 'package:teste_nees_weather_app/themes/icons.dart';

class MainWeatherInfoWidget extends StatelessWidget {
  final Weather weather;

  const MainWeatherInfoWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          IconFactory.getWeatherIcon(weather),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              weather.description,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/temp.png',
                  width: 48,
                  height: 48,
                ),
                Text(
                  "${weather.temp}°",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
