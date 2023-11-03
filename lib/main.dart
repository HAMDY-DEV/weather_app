import 'package:flutter/material.dart';
import 'package:weather_app/page/home_page.dart';
void main() => runApp( const Weather());

class Weather extends StatelessWidget{
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }


}
