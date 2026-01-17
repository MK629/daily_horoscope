import 'package:daily_horoscope/contexts/sign_context.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:daily_horoscope/widgets/buttons/theme_toggle_button.dart';
import 'package:daily_horoscope/widgets/components/daily_horoscope_display.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ThemeToggleButton(),
          SignDisplay(sign: currentSign,),
          HoroscopeDisplay(sign: currentSign)
        ],
      ),
    );
  }
}