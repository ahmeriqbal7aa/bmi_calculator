import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'TextIconFile.dart';

//TODO Initialize const variables "Active and deActive"
const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);
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
                    //TODO use Ternary Operator for male
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
                    //TODO use Ternary Operator for female
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
