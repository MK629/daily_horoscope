import 'package:daily_horoscope/fetcher/fetcher.dart';
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
  late Future<DisplayDTO> display;

  @override
  void initState() {
    super.initState();
    display = fetchData(widget.sign, horoscopeType);
  }

  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: display, 
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return CircularProgressIndicator();
        }
        WeeklyDisplayDTO display = snapshot.data as WeeklyDisplayDTO? ?? nullFallbackWeekly();
        return Text(display.horoscope_data);
      },
    );
  }
}