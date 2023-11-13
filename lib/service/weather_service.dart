import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final String _key = '019e0985df474cdd8db35849232310';
  final String _baseUrl = 'http://api.weatherapi.com/v1';

  Future<WeatherModels?> getWeather(String city) async {
    Uri url = Uri.parse('$_baseUrl/forecast.json?key=$_key &q=$city&days=1');
    http.Response response = await http.get(url);
    Map<String, dynamic> dataJson = jsonDecode(response.body);
    return response.statusCode==200?WeatherModels.fromJson(dataJson):null;

  }
}
