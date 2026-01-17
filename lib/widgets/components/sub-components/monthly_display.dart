import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class MonthlyDisplay extends StatefulWidget {
  final Sign sign;

  const MonthlyDisplay({ required this.sign, super.key });

  @override
  State<MonthlyDisplay> createState() => _MonthlyDisplayState();
}

class _MonthlyDisplayState extends State<MonthlyDisplay> {
  final HoroscopeType horoscopeType = HoroscopeType.monthly;

  @override
  void initState() {
    // TODO: implement api call here...
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Text("Monthly horoscope for ${widget.sign.name}");
  }
}