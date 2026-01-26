import 'package:daily_horoscope/hive/worker_bee.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class SignContext extends ChangeNotifier{
  late Sign sign;

  Sign get getSign => sign;

  SignContext(Sign cachedSign){
    sign = cachedSign;
  }

  Future<void> changeSign(Sign sign) async{
    await saveSignToCache(sign);
    this.sign = sign;
    notifyListeners();
  }
}