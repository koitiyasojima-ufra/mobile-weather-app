import 'package:intl/intl.dart';
import 'package:teste_nees_weather_app/data/models/forecast_model.dart';

class Weather {
  late int temp;
  late DateTime date;
  late DateTime time;
  late String description;
  late String currently;
  late String city;
  late int humidity;
  late double cloudiness;
  late double rain;
  late String wind_speedy;
  late int wind_direction;
  late String sunrise;
  late String sunset;
  late String condition_slug;
  late String city_name;
  late List<Forecast> forecast;

  Weather({
    required this.temp,
    required this.date,
    required this.time,
    required this.description,
    required this.currently,
    required this.city,
    required this.humidity,
    required this.cloudiness,
    required this.rain,
    required this.wind_speedy,
    required this.wind_direction,
    required this.sunrise,
    required this.sunset,
    required this.condition_slug,
    required this.city_name,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    date = DateFormat('dd/MM/yyyy').parse(json['date']);
    time = DateFormat('hh:mm').parse(json['time']);
    description = json['description'];
    currently = json['currently'];
    city = json['city'];
    humidity = json['humidity'];
    cloudiness = json['cloudiness'];
    rain = json['rain'];
    wind_speedy = json['wind_speedy'];
    wind_direction = json['wind_direction'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    condition_slug = json['condition_slug'];
    city_name = json['city_name'];
    forecast = List<Forecast>.from(
        json['forecast'].map((fcast) => Forecast.fromJson(fcast)));
  }
}
