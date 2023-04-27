import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherAPI {
  static final String API_URL = dotenv.env['API_URL']!;
  static final dio = Dio();

  Future<Map<String, dynamic>> getWeather() async {
    try {
      Response response = await dio.get(API_URL);
      return response.data;
    } catch (e) {
      /**
       * A API TEM CHAMADAS LIMITADAS
       * POR ISSO QUANDO O LIMITE FOR EXTRAPOLADO
       * DADOS MOCK SERÃO RETORNADOS ABAIXO
       */
      return {
        "by": "default",
        "valid_key": false,
        "results": {
          "temp": 21,
          "date": "27/04/2023",
          "time": "11:13",
          "condition_code": "29",
          "description": "Parcialmente nublado",
          "currently": "dia",
          "cid": "",
          "city": "São Paulo, SP",
          "img_id": "29",
          "humidity": 76,
          "cloudiness": 40.0,
          "rain": 0.0,
          "wind_speedy": "4.63 km/h",
          "wind_direction": 300,
          "sunrise": "06:24 am",
          "sunset": "05:43 pm",
          "condition_slug": "cloud",
          "city_name": "São Paulo",
          "forecast": [
            {
              "date": "27/04",
              "weekday": "Qui",
              "max": 23,
              "min": 16,
              "cloudiness": 88.0,
              "rain": 1.26,
              "rain_probability": 85,
              "wind_speedy": "4.38 km/h",
              "description": "Chuvas esparsas",
              "condition": "rain"
            },
            {
              "date": "28/04",
              "weekday": "Sex",
              "max": 22,
              "min": 16,
              "cloudiness": 68.0,
              "rain": 0.0,
              "rain_probability": 19,
              "wind_speedy": "4.46 km/h",
              "description": "Tempo nublado",
              "condition": "cloudly_day"
            },
            {
              "date": "29/04",
              "weekday": "Sáb",
              "max": 21,
              "min": 15,
              "cloudiness": 87.0,
              "rain": 0.36,
              "rain_probability": 57,
              "wind_speedy": "3.89 km/h",
              "description": "Chuvas esparsas",
              "condition": "rain"
            },
            {
              "date": "30/04",
              "weekday": "Dom",
              "max": 26,
              "min": 16,
              "cloudiness": 1.0,
              "rain": 0.15,
              "rain_probability": 22,
              "wind_speedy": "2.95 km/h",
              "description": "Chuvas esparsas",
              "condition": "rain"
            },
            {
              "date": "01/05",
              "weekday": "Seg",
              "max": 26,
              "min": 16,
              "cloudiness": 0.0,
              "rain": 0.0,
              "rain_probability": 2,
              "wind_speedy": "3.23 km/h",
              "description": "Tempo limpo",
              "condition": "clear_day"
            },
            {
              "date": "02/05",
              "weekday": "Ter",
              "max": 26,
              "min": 17,
              "cloudiness": 0.0,
              "rain": 0.3,
              "rain_probability": 25,
              "wind_speedy": "1.89 km/h",
              "description": "Chuvas esparsas",
              "condition": "rain"
            },
            {
              "date": "03/05",
              "weekday": "Qua",
              "max": 26,
              "min": 16,
              "cloudiness": 0.0,
              "rain": 0.0,
              "rain_probability": 0,
              "wind_speedy": "3.17 km/h",
              "description": "Tempo limpo",
              "condition": "clear_day"
            },
            {
              "date": "04/05",
              "weekday": "Qui",
              "max": 27,
              "min": 16,
              "cloudiness": 39.0,
              "rain": 0.0,
              "rain_probability": 0,
              "wind_speedy": "3.82 km/h",
              "description": "Parcialmente nublado",
              "condition": "cloud"
            },
            {
              "date": "05/05",
              "weekday": "Sex",
              "max": 28,
              "min": 17,
              "cloudiness": 1.0,
              "rain": 0.0,
              "rain_probability": 0,
              "wind_speedy": "4.53 km/h",
              "description": "Tempo limpo",
              "condition": "clear_day"
            },
            {
              "date": "06/05",
              "weekday": "Sáb",
              "max": 28,
              "min": 18,
              "cloudiness": 49.0,
              "rain": 0.0,
              "rain_probability": 3,
              "wind_speedy": "6.23 km/h",
              "description": "Parcialmente nublado",
              "condition": "cloud"
            }
          ],
          "cref": "fc865d"
        },
        "execution_time": 0.0,
        "from_cache": true
      };
    }
  }
}
