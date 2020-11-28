import 'package:flutter/material.dart';

//TODO Auto Generated Container's Refactored Class
class RepeatContainerCode extends StatelessWidget {
  // const RepeatContainerCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return color and widget of this class
  RepeatContainerCode({@required this.colors, this.cardWidget});
  //TODO Define Variables for Container Code
  // here "final" keyword mean, at runtime we update the property of this class's objects ("colors" and "cardWidget")
  final Color colors;
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
