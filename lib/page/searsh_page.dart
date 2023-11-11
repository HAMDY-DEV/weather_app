import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/service/weather_service.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  String? cityName;

  void getWeather(String cityName, context) async {
    WeatherService weatherService = WeatherService();
    WeatherModels weatherModels = await weatherService.getWeather(cityName);

     Provider.of<WeatherProvider>(context, listen: false).weatherModels =
        weatherModels;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF29B2DD),
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gif/woman_day.gif')),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                cityName = value;
              },
              onSubmitted: (value) {
                getWeather(value, context);
              },
              decoration: InputDecoration(
                  hintText: 'Enter city name',
                  label: const Text('City name'),
                  suffixIcon: IconButton(
                    onPressed: () {
                      getWeather(cityName!, context);
                    },
                    icon: const Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    gapPadding: 5,
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
