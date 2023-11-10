class WeatherModels {
  String name;
  double avgtemp_c;
  double maxtemp_c;
  double mintemp_c;
  double totalprecip_mm;
  double avgtemp_f;
  double gust_kph; //الرياح
  DateTime date;
  String mode;
  String text;
  List<dynamic> hour;

  WeatherModels(
      {required this.name,
        required this.avgtemp_c,
        required this.maxtemp_c,
        required this.mintemp_c,
        required this.totalprecip_mm,
        required this.avgtemp_f,
        required this.gust_kph,
        required this.date,
        required this.mode,
        required this.text,
        required this.hour});

  factory WeatherModels.fromJson(dynamic dataJson) {
    var path = dataJson['forecast']['forecastday'][0];
    return WeatherModels(
        name: dataJson['location']['name'],
        avgtemp_c: path['day']['avgtemp_c'],
        maxtemp_c: path['day']['maxtemp_c'],
        mintemp_c: path['day']['mintemp_c'],
        totalprecip_mm: dataJson['forecast']['forecastday'][0]['day']['totalprecip_mm'],
        avgtemp_f: path['day']['avgtemp_f'],
        gust_kph: dataJson['current']['gust_kph'],
        date: DateTime.parse(path['date']),
        mode: dataJson['current']['condition']['text'],
        text: path['day']['condition']['text'],
        hour: path['hour']);
  }
}
