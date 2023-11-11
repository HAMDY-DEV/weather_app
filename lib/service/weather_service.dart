import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  String _key = '019e0985df474cdd8db35849232310';
  String _baseUrl = 'http://api.weatherapi.com/v1';

  Future<WeatherModels> getWeather(String city) async {
    Uri url = Uri.parse('$_baseUrl/forecast.json?key=$_key &q=$city&days=3');
    http.Response response = await http.get(url);
    Map<String, dynamic> dataJson = jsonDecode(response.body);
    return WeatherModels.fromJson(dataJson);

  }
}

/*

WeatherModels models = WeatherModels(
      dataJson['location']['name'],
      dataJson['current']['condition']['icon'],
      dataJson['forecast']['forecastday'][0]['day']['avgtemp_c'],
      dataJson['forecast']['forecastday'][0]['day']['condition']['text'],
      dataJson['forecast']['forecastday'][0]['day']['mintemp_c'],
      dataJson['forecast']['forecastday'][0]['day']['maxtemp_c'],
      dataJson['forecast']['forecastday'][0]['day']['totalprecip_mm'],
      dataJson['forecast']['forecastday'][0]['day']['avgtemp_f'],
      dataJson['current']['gust_kph'],
      dataJson['forecast']['forecastday'][0]['hour'][15]['time'],
      dataJson['forecast']['forecastday'][0]['hour'][15]['condition']['icon'],
      dataJson['forecast']['forecastday'][0]['hour'][15]['temp_c'],
    );









        print(dataJson['location']['name']);
    print(dataJson['current']['condition']['icon']);
    print(dataJson['forecast']['forecastday'][0]['day']['avgtemp_c']);
    print(dataJson['forecast']['forecastday'][0]['day']['condition']['text']);
    print(dataJson['forecast']['forecastday'][0]['day']['mintemp_c']);
    print(dataJson['forecast']['forecastday'][0]['day']['maxtemp_c']);
    print(dataJson['forecast']['forecastday'][0]['day']['totalprecip_mm']);
    print(dataJson['forecast']['forecastday'][0]['day']['avgtemp_f']);
    print(dataJson['current']['gust_kph']);
    print(dataJson['forecast']['forecastday'][0]['hour'][15]['time']);
    print(dataJson['forecast']['forecastday'][0]['hour'][15]['condition']['icon']);
    print(dataJson['forecast']['forecastday'][0]['hour'][15]['temp_c']);
    print('============================================================');




 */
