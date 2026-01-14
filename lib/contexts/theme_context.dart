import 'package:flutter/material.dart';

class ThemeContext extends ChangeNotifier{

  ThemeMode appThemeMode = ThemeMode.light;

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