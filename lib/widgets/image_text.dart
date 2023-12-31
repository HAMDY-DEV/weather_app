// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class ImageText extends StatelessWidget{
  final String _imagePith;
  final String _text;
  const ImageText(this._imagePith, this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Image(image: AssetImage(_imagePith),width: 25,height: 25,fit: BoxFit.cover,),
      Text(_text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),)],);
  }

}