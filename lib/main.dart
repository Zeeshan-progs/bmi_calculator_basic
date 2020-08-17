import 'package:bmi_calculator/Input_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

//const kBackground = Color(f50d56);
//0A0E20 background
//1d1e32   foreground
//slider  f50d566
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
