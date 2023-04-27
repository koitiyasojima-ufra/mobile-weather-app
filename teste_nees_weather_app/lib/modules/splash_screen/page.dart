import 'package:flutter/material.dart';
import 'package:teste_nees_weather_app/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  void _delay() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        Routes.weather,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _delay());
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 300,
            height: 400,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Tempo NEES",
                      style: Theme.of(context).textTheme.headline1),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LinearProgressIndicator(
              color: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).primaryColorLight,
            ),
          ),
        ),
      ],
    );
  }
}
