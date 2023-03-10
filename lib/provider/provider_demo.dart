import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  String sample = "Sample Provider";
  void changeValue(String val) {
    sample = val;
    notifyListeners();
  }
}

class ThemeProvider with ChangeNotifier {
  ThemeData themes = ThemeData.dark();
  ThemeData get theme => themes;

  void toggleTheme() {
    final isDark = themes == ThemeData.dark();
    if (isDark) {
      themes = ThemeData.light();
    } else {
      themes = ThemeData.dark();
    }
    notifyListeners();
  }
}
