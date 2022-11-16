import 'package:flutter/material.dart';
import "input_page.dart";
import "results_page.dart";

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff023436),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xff023436),
            secondary: Color(0xff037971),
          ),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        routes: {
          '/root': (context) => BMICalculator(),
          '/results': (context) => ResultsPage(),
        });
  }
}
