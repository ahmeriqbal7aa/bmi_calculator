import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

//TODO Auto Generated Text and Icon Refactored Class
class RepeatTextandIconCode extends StatelessWidget {
  // const RepeatTextandIconCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return icon and label of this class
  RepeatTextandIconCode({@required this.iconData, this.label});
  //TODO Define Variables for Text and Icon
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          //TODO here we use IconData variable's object
          iconData,
          size: 85.0,
        ),
        SizedBox(height: 15.0),
        Text(
          //TODO here we use String variable's object
          label,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

//TODO Auto Generated Container's Refactored Class
class RepeatContainerCode extends StatelessWidget {
  // const RepeatContainerCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return color and cardWidget of this class
  RepeatContainerCode({@required this.colors, this.cardWidget});
  //TODO Define Variables for Container Code
  // here "final" keyword mean, at runtime we update the property of this class's object ("colors")
  final Color colors;
  // here we define a Widget variable
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      //TODO here we use Widget variable's object
      child: cardWidget,
      decoration: BoxDecoration(
        //TODO here we use Color variable's object
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
