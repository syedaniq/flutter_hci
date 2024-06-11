import 'package:flutter/material.dart';

class DarkMode extends ChangeNotifier {
  bool _darkMode = true;
  bool get darkMode => _darkMode;

  void toggleThemeMode() {
    _darkMode = !_darkMode;
    notifyListeners();
  }
}
