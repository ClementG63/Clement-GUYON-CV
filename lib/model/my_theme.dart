import 'package:flutter/material.dart';
import 'dart:developer';

class MyTheme extends ChangeNotifier {
  static bool _isDark = true;

  ThemeMode currentTheme(){
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme(){
    _isDark = !_isDark;
    log('Theme switched to ${_isDark ? "DARK" : "LIGHT"}');
    notifyListeners();
  }
}