import 'package:daily_horoscope/types/signs.dart';
import 'package:flutter/material.dart';

class SignContext extends ChangeNotifier{
  Sign sign = Sign.Aquarius;

  Sign get getSign => sign;

  void changeSign(Sign sign){
    this.sign = sign;
    notifyListeners();
  }
}