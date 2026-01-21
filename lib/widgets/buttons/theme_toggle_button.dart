import 'package:daily_horoscope/contexts/theme_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Use later maybe
class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({ super.key });

  @override
  Widget build(BuildContext context){
    ThemeContext themeContext = context.read<ThemeContext>();

    Icon buttonIcon;

    switch (themeContext.getAppThemeMode) {
      case ThemeMode.light:
        buttonIcon = Icon(Icons.light_mode);
      case ThemeMode.dark:
        buttonIcon = Icon(Icons.dark_mode);
      default:
        buttonIcon = Icon(Icons.light_mode);
    }

    return IconButton(
      onPressed: () => themeContext.toggleAppThemeMode(), 
      icon: buttonIcon,
    );
  }
}