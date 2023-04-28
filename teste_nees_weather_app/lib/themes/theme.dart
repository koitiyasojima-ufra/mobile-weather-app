import 'package:flutter/material.dart';

final ThemeData dayTheme = ThemeData(
  scaffoldBackgroundColor: Colors.blue[200],
  cardColor: Color.fromARGB(92, 109, 188, 233),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(
      fontSize: 40.0,
      color: Colors.black54,
    ),
    headline3: TextStyle(
      fontSize: 36.0,
      color: Colors.black54,
    ),
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: Colors.black54,
    displayColor: Colors.black54,
  ),
);

final ThemeData nightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.indigo[800],
  cardColor: Color.fromARGB(108, 92, 107, 192),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(
      fontSize: 40.0,
      color: Colors.white70,
    ),
    headline3: TextStyle(
      fontSize: 36.0,
      color: Colors.white70,
    ),
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: Colors.white70,
    displayColor: Colors.white70,
  ),
);
