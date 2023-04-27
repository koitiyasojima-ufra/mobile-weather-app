import 'package:flutter/material.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';

class WeatherInfoCard extends StatelessWidget {
  final Weather weather;

  const WeatherInfoCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/humidity.png',
                  height: 32,
                  width: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("${weather.humidity}%"),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/wind.png',
                  height: 32,
                  width: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(weather.wind_speedy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
