import 'package:intl/intl.dart';

class Forecast {
  late DateTime date;
  late String weekday;
  late int max;
  late int min;
  late double cloudiness;
  late double rain;
  late String wind_speedy;
  late int rain_probability;
  late String description;
  late String condition;

  Forecast({
    required this.date,
    required this.weekday,
    required this.description,
    required this.max,
    required this.min,
    required this.cloudiness,
    required this.rain,
    required this.wind_speedy,
    required this.rain_probability,
    required this.condition,
  });

  Forecast.fromJson(Map<String, dynamic> json) {
    date = DateFormat('dd/MM').parse(json['date']);
    weekday = json['weekday'];
    description = json['description'];
    max = json['max'];
    min = json['min'];
    cloudiness = json['cloudiness'];
    rain = json['rain'];
    wind_speedy = json['wind_speedy'];
    rain_probability = json['rain_probability'];
    condition = json['condition'];
  }
}
