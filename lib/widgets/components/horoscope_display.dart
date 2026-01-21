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
      break;
      case HoroscopeType.weekly:
        horoscopeDisplay = WeeklyDisplay(sign: widget.sign);
      break;
      case HoroscopeType.monthly:
        horoscopeDisplay = MonthlyDisplay(sign: widget.sign);
      break;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton(
          segments: [
            ButtonSegment(value: HoroscopeType.daily, label: Text("Daily"), icon: Icon(Icons.calendar_today_outlined)),
            ButtonSegment(value: HoroscopeType.weekly, label: Text("Weekly"), icon: Icon(Icons.date_range_outlined)),
            ButtonSegment(value: HoroscopeType.monthly, label: Text("Monthly"), icon: Icon(Icons.calendar_month_outlined))
          ], 
          selected: {horoscopeType}, //{} means Set, SegmentedButton puts everything into Set to be flexible for single, multi or zero select.
          onSelectionChanged: (newSelection) => setState(() => horoscopeType = newSelection.first),
        ),
        horoscopeDisplay
      ],
    );
  }
}
