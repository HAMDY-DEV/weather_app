import 'package:flutter/material.dart';
class ImageText extends StatelessWidget{
  String _imagePith;
  String _text;
  ImageText(this._imagePith, this._text);

  @override
  Widget build(BuildContext context) {
    return Row(children: [Image(image: AssetImage(_imagePith),width: 25,height: 25,fit: BoxFit.cover,),
      Text(_text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),)],);
  }

}