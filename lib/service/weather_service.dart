import 'dart:convert';

import 'package:http/http.dart' as http;
class WeatherService {

  String _key = '019e0985df474cdd8db35849232310';
  String _baseUrl = 'http://api.weatherapi.com/v1';


  getWeather() async{
    Uri url = Uri
        .parse('$_baseUrl/forecast.json?key=$_key &q=London&days=7');
     http.Response response = await http.get(url);
     Map<String,dynamic> dataJson = jsonDecode(response.body);

     print('days : ${dataJson['forecast']['forecastday'][6]}');
     print('========================================');
     print('hour : ${dataJson['forecast']['forecastday'][3]['hour']}');
    }


}