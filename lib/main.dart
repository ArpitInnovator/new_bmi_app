import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() {
  try {
    runApp(BMICalculator());
  } catch (e) {
    print('Error starting the app: $e');
  }
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
  }
