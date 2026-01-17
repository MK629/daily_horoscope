import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class SignDisplay extends StatelessWidget {

  final Sign sign;

  const SignDisplay({required this.sign, super.key});

  @override
  Widget build(BuildContext context){
    return Image.asset("assets/image/${sign.name}.png", scale: 10, alignment: AlignmentGeometry.center,);
  }
}