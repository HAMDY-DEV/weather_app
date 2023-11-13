import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HourWeather extends StatelessWidget {


  int hourNew = int.parse(DateTime.now().hour.toString());
  final String _c;
  final DateTime _hour;
  String mode;
  HourWeather( this._c,this._hour,this.mode, {super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 70,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color:  double.parse(_hour.hour.toString()).toInt()==hourNew? Colors.white12:Colors.transparent ,
            borderRadius: BorderRadius.circular(20),
            border: double.parse(_hour.hour.toString()).toInt()==hourNew?Border.all(color: Colors.white):Border.all(color: Colors.transparent)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${double.parse(_c).toInt()}ºc',
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),
            ),
            const SizedBox(
              height: 20,width: 110,
            ),
            Image(image: AssetImage(mode=='Clear'||mode=='Patchy rain possible'?'assets/images/icons/night.png':'assets/images/icons/sun.png'),fit: BoxFit.fill,),
            const SizedBox(
              height: 30,
            ),
            Text(
              '${_hour.hour}:00',
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),
            ),

          ],
        ),
      ),
    );
  }



}

