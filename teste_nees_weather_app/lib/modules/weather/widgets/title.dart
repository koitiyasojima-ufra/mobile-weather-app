import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';
import 'package:teste_nees_weather_app/themes/icons.dart';
import 'package:teste_nees_weather_app/themes/theme.dart';

class WeatherTitle extends StatelessWidget {
  final Weather weather;
  const WeatherTitle({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Clique para alterar o tema dia/noite: "),
            IconButton(
              icon: const Icon(Icons.wb_sunny_outlined),
              onPressed: (() {
                IconFactory.currently = 'day';
                Get.changeTheme(dayTheme);
              }),
            ),
            IconButton(
              icon: const Icon(Icons.mode_night_outlined),
              onPressed: (() {
                IconFactory.currently = 'night';
                Get.changeTheme(nightTheme);
              }),
            ),
          ],
        ),
        Text(
          weather.city,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
