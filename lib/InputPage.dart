import 'package:bmi_calculator/ConstantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'TextIconFile.dart';
import 'ConstantFile.dart';

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
  //TODO Define Slider Variable
  int sliderHeight = 180;
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
                    //TODO Received Gesture Detector
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
                    //TODO Received Gesture Detector
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
                  ),
                ),
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
