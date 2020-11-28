import 'package:flutter/material.dart';

//TODO Auto Generated Container's Refactored Class
class RepeatContainerCode extends StatelessWidget {
  // const RepeatContainerCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return color and widget of this class
  RepeatContainerCode({@required this.colors, this.cardWidget, this.onPressed});
  //TODO Define Variables for Container Code
  // here "final" keyword mean, at runtime we update the property of this class's objects ("colors" and "cardWidget" and "onPressed")
  final Color colors;
  final Widget cardWidget;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    //TODO place container in Gesture Detector
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        //TODO here we use Widget variable's object
        child: cardWidget,
        decoration: BoxDecoration(
          //TODO here we use Color variable's object
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
