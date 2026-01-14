import 'package:daily_horoscope/app/horoscope/horoscope.dart';
import 'package:daily_horoscope/contexts/theme_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  const Root({ super.key });

  @override
  Widget build(BuildContext context){
    ThemeContext themecontext = context.watch<ThemeContext>();

    return MaterialApp(
      title: "Daily Horoscope",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themecontext.getAppThemeMode,
      home: SafeArea(
        child: AppBody()
      ),
    );
  }
}

//===============[ Application Body ]===============
class AppBody extends StatelessWidget {
  const AppBody({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Horoscope(),
    );
  }
}