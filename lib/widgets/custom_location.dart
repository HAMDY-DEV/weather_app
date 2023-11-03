import 'package:flutter/material.dart';
class CustomLocation extends StatelessWidget {
  String cityName;
  CustomLocation(this.cityName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        cityName,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      Icon(Icons.keyboard_arrow_down,color: Colors.white,)

    ],);
  }
}
