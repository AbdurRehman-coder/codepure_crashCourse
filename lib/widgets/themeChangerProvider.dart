import 'package:flutter/material.dart';

class ThemeChangerScreen with ChangeNotifier {
  ThemeMode theme_mode = ThemeMode.dark;
  ThemeMode get themeMode => theme_mode;
  void setTheme(themeMode) {
    theme_mode = themeMode;

    notifyListeners();
  }
}