import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/page/no_weather_page.dart';
import 'package:weather_app/page/weather_page.dart';
import 'package:weather_app/provider/weather_provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModels? models = Provider.of<WeatherProvider>(context).weatherModels;
    return Scaffold(
        backgroundColor: const Color(0XFF29B2DD),
        body: models != null
            ? WeatherPage()
            :const NoWeatherPage());
  }
}
