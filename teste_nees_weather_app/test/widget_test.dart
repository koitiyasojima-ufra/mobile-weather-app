// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_nees_weather_app/data/api/weather_api.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';

import 'package:teste_nees_weather_app/main.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WeatherAPI api = WeatherAPI();
  var response = await api.getWeather();
}
