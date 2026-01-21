
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class SignDisplay extends StatelessWidget {

  final Sign sign;

  const SignDisplay({required this.sign, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: Colors.amberAccent,
          width: 4
        ),
        color: const Color.fromARGB(255, 16, 27, 92),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          "assets/image/${sign.name}.png", 
          width: 125,
          height: 125,
          alignment: AlignmentGeometry.center,
          color: Colors.amberAccent,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}