import 'package:daily_horoscope/app/root.dart';
import 'package:daily_horoscope/contexts/sign_context.dart';
import 'package:daily_horoscope/contexts/theme_context.dart';
import 'package:daily_horoscope/hive/worker_bee.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);

  int? signPos = await getCachedSign();

  runApp(HoroscopeApp(cachedSign: Sign.values[signPos as int]));
}

class HoroscopeApp extends StatelessWidget{
  final Sign cachedSign;
  const HoroscopeApp({required this.cachedSign ,super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeContext(),),
        ChangeNotifierProvider(create: (context) => SignContext(cachedSign),)
      ],
      child: Root()
    );
  }
}