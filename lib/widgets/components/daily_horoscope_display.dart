import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:daily_horoscope/widgets/components/sub-components/daily_display.dart';
import 'package:daily_horoscope/widgets/components/sub-components/monthly_display.dart';
import 'package:daily_horoscope/widgets/components/sub-components/weekly_display.dart';
import 'package:flutter/material.dart';

class HoroscopeDisplay extends StatefulWidget {

  final Sign sign;

  const HoroscopeDisplay({ required this.sign, super.key });

  @override
  HoroscopeDisplayState createState() => HoroscopeDisplayState();
}

class HoroscopeDisplayState extends State<HoroscopeDisplay> {

  HoroscopeType horoscopeType = HoroscopeType.daily;

  @override
  Widget build(BuildContext context) {

    Widget horoscopeDisplay;

    switch(horoscopeType){
      case HoroscopeType.daily:
        horoscopeDisplay = DailyDisplay(sign: widget.sign);
      case HoroscopeType.weekly:
        horoscopeDisplay = WeeklyDisplay(sign: widget.sign);
      case HoroscopeType.monthly:
        horoscopeDisplay = MonthlyDisplay(sign: widget.sign);
    }

    return horoscopeDisplay;
  }
}
