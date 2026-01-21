import 'package:flutter/material.dart';

Widget scrollableText(String text){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.amberAccent,
          width: 3
        ),
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
        color: const Color.fromARGB(255, 7, 13, 46)
      ),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    ),
  );
}