import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "reusable_card.dart";
import "icon_content.dart";
import "constants.dart";
import "calculator_brain.dart";
import "results_page.dart";

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  int height = 180;
  int weight = 80;
  int age = 20;

  Gender gender = Gender.male;

  void updateCard(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        maleCardColor = kActiveCardColor;
        femaleCardColor = kInactiveCardColor;
      } else {
        maleCardColor = kInactiveCardColor;
        femaleCardColor = kActiveCardColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      gender = Gender.male;
                      updateCard(Gender.male);
                    },
                    cardChild: IconContent(
                        maleFemaleChoiceIcon: FontAwesomeIcons.mars,
                        maleFemaleChoiceText: "Male"),
                    color: maleCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      gender = Gender.female;
                      updateCard(Gender.female);
                    },
                    cardChild: IconContent(
                        maleFemaleChoiceIcon: FontAwesomeIcons.venus,
                        maleFemaleChoiceText: "Female"),
                    color: femaleCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 250.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                                elevation: 0.0,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      weight--;
                                    },
                                  );
                                }),
                            FloatingActionButton(
                                elevation: 0.0,
                                child: Icon(Icons.add, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    color: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                                elevation: 0.0,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            FloatingActionButton(
                                elevation: 0.0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calculator =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmi: calculator.calculateBMI(),
                    weightStatus: calculator.weightStatus(),
                    weightInterpretation: calculator.weightInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  "CALCULATE",
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
