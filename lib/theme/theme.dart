import 'package:flutter/material.dart';

ThemeData darktheme(){
  return ThemeData(
    colorScheme: ColorScheme(brightness: Brightness.dark, primary: Colors.black, onPrimary: Colors.white, secondary: Colors.grey.shade800, onSecondary: Colors.grey.shade200, error: Colors.black, onError: Colors.red, background: Colors.black, onBackground: Colors.white, surface: Colors.black54, onSurface: Colors.white54)
  );
}
ThemeData lightheme(){
  return ThemeData();
}