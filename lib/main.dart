import 'package:daily_horoscope/app/root.dart';
import 'package:daily_horoscope/contexts/sign_context.dart';
import 'package:daily_horoscope/contexts/theme_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HoroscopeApp());
}

class HoroscopeApp extends StatelessWidget{
  const HoroscopeApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeContext(),),
        ChangeNotifierProvider(create: (context) => SignContext(),)
      ],
      child: Root()
    );
  }
}