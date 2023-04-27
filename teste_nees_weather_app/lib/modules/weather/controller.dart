import 'dart:developer';

import 'package:get/get.dart';
import 'package:teste_nees_weather_app/data/api/weather_api.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';

class WeatherController extends GetxController {
  WeatherAPI weatherService = Get.put(WeatherAPI());

  Future<Weather> getWeatherData() async {
    var response = await weatherService.getWeather();
    Weather weather = Weather.fromJson(response['results']);
    return weather;
  }
}
