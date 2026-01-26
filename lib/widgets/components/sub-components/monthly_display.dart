import 'package:daily_horoscope/fetcher/fetcher.dart';
import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:daily_horoscope/widgets/common_ui.dart';
import 'package:daily_horoscope/widgets/components/sub-components/loading.dart';
import 'package:daily_horoscope/widgets/components/sub-components/scrollable_text_display.dart';
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
  void didUpdateWidget(covariant MonthlyDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);

    if(oldWidget.sign != widget.sign){
      display = fetchData(widget.sign, horoscopeType);
    }
  }

  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: display, 
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        MonthlyDisplayDTO display = snapshot.data as MonthlyDisplayDTO? ?? nullFallbackMonthly();

        return Expanded(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 4.0),
                child:Container(
                  width: double.infinity,
                  height: 60,
                  decoration: commonBoxDecoration(),
                  padding: EdgeInsets.all(16),
                  child: Text(display.month, textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: Colors.amberAccent),),
                ),
              ),
              ScrollableText(text: display.horoscope_data),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                child: Row(
                  spacing: 4,
                  children: [
                    Container(
                      width: 182,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amberAccent,
                          width: 3
                        ),
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                        color: commonTextBgColour()
                      ),
                      padding: EdgeInsets.all(4),
                      child: Text("Challenging days: ${display.challenging_days}", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.amberAccent),),
                    ),
                    Container(
                      width: 182,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amberAccent,
                          width: 3
                        ),
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                        color: commonTextBgColour()
                      ),
                      padding: EdgeInsets.all(4),
                      child: Text("Standout days: ${display.standout_days}", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.amberAccent),),
                    ),                        
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}