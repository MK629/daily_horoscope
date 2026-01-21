import 'package:daily_horoscope/contexts/sign_context.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:daily_horoscope/widgets/buttons/sign_select_button.dart';
import 'package:daily_horoscope/widgets/components/horoscope_display.dart';
import 'package:daily_horoscope/widgets/components/sign_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({ super.key });

  @override
  Widget build(BuildContext context){
    SignContext signContext = context.watch<SignContext>();
    Sign currentSign = signContext.getSign;

    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        spacing: 12,
        children: [
          SizedBox(height: 10,),
          SignDisplay(sign: currentSign),
          SignSelectButton(),
          Expanded(child: HoroscopeDisplay(sign: currentSign))
        ],
      ),
    );
  }
}