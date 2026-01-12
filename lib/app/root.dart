import 'package:daily_horoscope/app/horoscope/horoscope.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Daily Horoscope",
      theme: ThemeData.light(),
      home: SafeArea(
        child: AppBody()
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Horoscope(),
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}