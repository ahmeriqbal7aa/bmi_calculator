import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      //TODO Give Default Theme
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      //TODO for giving manually theme use below code
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21),
      //   //for update scaffold color
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   //for seeing text
      //   textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
      // ),
    );
  }
}
