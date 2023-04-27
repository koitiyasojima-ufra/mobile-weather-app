import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_nees_weather_app/data/models/forecast_model.dart';
import 'package:teste_nees_weather_app/themes/icons.dart';

class ForecastCard extends StatelessWidget {
  final List<Forecast> forecasts;

  const ForecastCard({super.key, required this.forecasts});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.calendar_month_outlined),
                  ),
                  Text("Próximos dias"),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: buildForecastView(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView buildForecastView() {
    DateFormat formater = DateFormat('dd/MM');
    return ListView.builder(
        itemCount: forecasts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: IconFactory.getForecastIcon(forecasts.elementAt(index)),
              title: Text(
                "${forecasts.elementAt(index).weekday} ${formater.format(forecasts.elementAt(index).date)}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              trailing: Text(
                  "Min: ${forecasts.elementAt(index).min}°c Máx: ${forecasts.elementAt(index).max}°c"));
        });
  }
}
