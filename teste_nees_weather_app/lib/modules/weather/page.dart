import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:teste_nees_weather_app/data/models/weather_model.dart';
import 'package:teste_nees_weather_app/modules/weather/controller.dart';
import 'package:teste_nees_weather_app/modules/weather/widgets/forecast_list.dart';
import 'package:teste_nees_weather_app/modules/weather/widgets/title.dart';
import 'package:teste_nees_weather_app/modules/weather/widgets/today_weather.dart';
import 'package:teste_nees_weather_app/modules/weather/widgets/weather_card.dart';

class WeatherScreen extends StatelessWidget {
  late Weather weather;

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Weather>(
          future: controller.getWeatherData(),
          builder: ((context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      "Ocorreu um erro ao recuperar os dados, tente novamente mais tarde"),
                ),
              );
            } else if (snapshot.hasData) {
              weather = snapshot.data!;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      WeatherTitle(weather: weather),
                      MainWeatherInfoWidget(weather: weather),
                      WeatherInfoCard(weather: weather),
                      ForecastCard(forecasts: weather.forecast),
                    ],
                  ),
                ),
              );
            }

            return Center(
              child: SpinKitWave(
                color: Theme.of(context).primaryColor,
                size: 50,
              ),
            );
          })),
    );
  }
}
