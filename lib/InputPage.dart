import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'TextIconFile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  //TODO Assigning Color to Refactored Container
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    //TODO Assigning Text and Icon to Refactored Text and Icon
                    cardWidget: RepeatTextandIconCode(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
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
