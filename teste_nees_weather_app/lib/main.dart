import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:teste_nees_weather_app/modules/splash_screen/page.dart';
import 'package:teste_nees_weather_app/routes/routes.dart';
import 'package:teste_nees_weather_app/themes/icons.dart';
import 'package:teste_nees_weather_app/themes/theme.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  DateTime currentTime = DateTime.now();
  DateTime nightTime =
      DateTime(currentTime.year, currentTime.month, currentTime.day, 18);
  ThemeData themeData = dayTheme;

  if (currentTime.isAfter(nightTime)) {
    themeData = nightTheme;
    IconFactory.currently = 'night';
  }

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    theme: themeData,
    defaultTransition: Transition.fade,
    home: const SplashPage(),
    onGenerateRoute: Routes.generateRoute,
  ));
}
