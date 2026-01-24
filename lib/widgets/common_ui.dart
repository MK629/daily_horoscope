import 'package:flutter/material.dart';

BoxDecoration commonBoxDecoration(){
  return BoxDecoration(
    border: Border.all(
      color: Colors.amberAccent,
      width: 3
    ),
    borderRadius: BorderRadius.circular(20),
    shape: BoxShape.rectangle,
    color: commonTextBgColour()
  );
}

Color commonTextBgColour(){
  return Color.fromARGB(255, 7, 13, 46);
}