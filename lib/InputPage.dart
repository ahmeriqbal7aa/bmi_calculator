import 'package:bmi_calculator/ConstantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'TextIconFile.dart';
import 'ConstantFile.dart';
import 'ResultFile.dart';

// //TODO Initialize const variables "Active and deActive"
// const activeColor = Color(0xFF1D1E33);
// const deActiveColor = Color(0xFF111328);
//TODO Define "enum" that is used to defining named const values
// "enum" display const values into text form
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //TODO here we define variable of enum type
  Gender selectGender;
  //TODO Define Variable
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;
  // Color maleColor = deActiveColor;
  // Color femaleColor = deActiveColor;
  // //TODO we made a function for updating gender's color
  // void UpdateColor(Gender gendertype) {
  //   if (gendertype == Gender.male) {
  //     maleColor = activeColor;
  //     femaleColor = deActiveColor;
  //   }
  //   if (gendertype == Gender.female) {
  //     femaleColor = activeColor;
  //     maleColor = deActiveColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      //TODO Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TODO Row 1
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    // colors: maleColor,
                    //TODO Send to Gesture Detector
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    //TODO use Ternary Operator for male and Access "ConstantFile" Functionality
                    colors: selectGender == Gender.male
                        ? activeColor
                        : deActiveColor,
                    //TODO Assigning Text and Icon to Refactored Text and Icon code
                    cardWidget: RepeatTextandIconCode(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    // colors: femaleColor,
                    //TODO Send to Gesture Detector
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    //TODO use Ternary Operator for female and Access "ConstantFile" Functionality
                    colors: selectGender == Gender.female
                        ? activeColor
                        : deActiveColor,
                    cardWidget: RepeatTextandIconCode(
                      iconData: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TODO Row 2
          Expanded(
            child: new RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    //TODO Access "ConstantFile" Functionality
                    style: LabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //convert int to string as "toString()"
                        sliderHeight.toString(),
                        //TODO Access "ConstantFile" functionality
                        style: NumberStyle,
                      ),
                      Text(
                        'cm',
                        //TODO Access "ConstantFile" functionality
                        style: LabelStyle,
                      ),
                    ],
                  ),
                  //TODO Add Slider
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          //TODO Row 3
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          //TODO Access "ConstantFile" Functionality
                          style: LabelStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          //TODO Access "ConstantFile" Functionality
                          style: NumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcons(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderWeight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcons(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderWeight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          //TODO Access "ConstantFile" Functionality
                          style: LabelStyle,
                        ),
                        Text(
                          sliderAge.toString(),
                          //TODO Access "ConstantFile" Functionality
                          style: NumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcons(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderAge--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcons(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderAge++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TODO Row 4 and GestureDetector Container
          GestureDetector(
            onTap: () {
              //TODO Navigate to Result Screen
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  //TODO Access "ConstantFile" Functionality
                  style: CalculateButtonStyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }
}

//TODO we create class for round_icon buttons
class RoundIcons extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  RoundIcons({@required this.iconData, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
