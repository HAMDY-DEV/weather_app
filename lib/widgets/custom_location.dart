import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CustomLocation extends StatelessWidget {
  String cityName;
  CustomLocation(this.cityName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        cityName,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      const Icon(Icons.keyboard_arrow_down,color: Colors.white,)

    ],);
  }
}
