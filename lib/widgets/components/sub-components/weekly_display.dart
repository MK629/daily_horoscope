import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class WeeklyDisplay extends StatefulWidget {
  final Sign sign;

  const WeeklyDisplay({ required this.sign, super.key });

  @override
  State<WeeklyDisplay> createState() => _WeeklyDisplayState();
}

class _WeeklyDisplayState extends State<WeeklyDisplay> {
  final HoroscopeType horoscopeType = HoroscopeType.weekly;

  @override
  void initState() {
    // TODO: implement api call here...
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Text("Weekly horoscope for ${widget.sign.name}");
  }
}