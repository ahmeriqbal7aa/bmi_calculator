import 'package:flutter/material.dart';

//TODO Auto Generated Text and Icon Refactored Class
class RepeatTextandIconCode extends StatelessWidget {
  // const RepeatTextandIconCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return icon and label of this class
  RepeatTextandIconCode({@required this.iconData, this.label});
  //TODO Define Variables for Text and Icon
  // here "final" keyword mean, at runtime we update the property of this class's object ("iconData" and "label")
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
