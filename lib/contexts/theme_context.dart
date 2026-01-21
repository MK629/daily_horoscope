import 'package:flutter/material.dart';

//Use later maybe
class ThemeContext extends ChangeNotifier{

  ThemeMode appThemeMode = ThemeMode.dark;

  ThemeMode get getAppThemeMode => appThemeMode;

  void toggleAppThemeMode(){
    if(appThemeMode == ThemeMode.light){
      appThemeMode = ThemeMode.dark;
    }
    else{
      appThemeMode = ThemeMode.light;
    }

    notifyListeners();
  }
}