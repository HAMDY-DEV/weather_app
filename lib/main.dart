import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/page/splash_screen.dart';
import 'package:weather_app/provider/weather_provider.dart';

void main() => runApp(  ChangeNotifierProvider(
    create: (context) {
     return WeatherProvider();
    },
    child: const Weather()));

class Weather extends StatelessWidget{
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen()
    );
  }


}
