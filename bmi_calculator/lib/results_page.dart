import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import "package:flutter/material.dart";

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String weightStatus;
  final String weightInterpretation;

  ResultsPage({this.bmi, this.weightStatus, this.weightInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Your results", style: kNumberTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      weightStatus,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kNumberTextStyle.copyWith(
                        fontSize: 100.0,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        weightInterpretation,
                        style: kLabelTextStyle.copyWith(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/root');
            },
            child: Container(
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: kLabelTextStyle,
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
