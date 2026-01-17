import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class DailyDisplay extends StatefulWidget {
  final Sign sign;

  const DailyDisplay({ required this.sign, super.key });

  @override
  State<DailyDisplay> createState() => _DailyDisplayState();
}

class _DailyDisplayState extends State<DailyDisplay> {
  final HoroscopeType horoscopeType = HoroscopeType.daily;

  @override
  void initState() {
    // TODO: implement api call here...
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Text("Daily horoscope for ${widget.sign.name}");
  }
}