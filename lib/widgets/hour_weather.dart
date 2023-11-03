import 'package:flutter/material.dart';

class HourWeather extends StatelessWidget {

  String _c;
  String _image;
  String _hour;
  HourWeather(this._c, this._image, this._hour);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '$_cºc',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Image(image: AssetImage(_image),fit: BoxFit.fill,),
        SizedBox(
          height: 20,
        ),
        Text(
          _hour,
          style: TextStyle(color: Colors.white),
        ),

      ],
    );
  }
}
