import 'dart:math';
import 'package:flutter/material.dart';
import 'package:keno_app/pages/home.dart';
import "index.dart";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme:darktheme(),
      home: const HomePage()
    );
  }
}

