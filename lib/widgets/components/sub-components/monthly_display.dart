import 'package:daily_horoscope/fetcher/fetcher.dart';
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
        MonthlyDisplayDTO display = snapshot.data as MonthlyDisplayDTO? ?? nullFallbackMonthly();
        return Text(display.horoscope_data);
      },
    );
  }
}