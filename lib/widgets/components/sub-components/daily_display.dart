import 'package:daily_horoscope/fetcher/fetcher.dart';
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
        DailyDisplayDTO display = snapshot.data as DailyDisplayDTO? ?? nullFallbackDaily();
        return Text(display.horoscope_data);
      },
    );
  }
}
