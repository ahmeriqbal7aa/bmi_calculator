import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          //TODO Row 2
          Expanded(
            child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
          ),
          //TODO Row 3
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//TODO Auto Generated Container's Refactored Class
class RepeatContainerCode extends StatelessWidget {
  // const RepeatContainerCode({
  //   Key key,
  // }) : super(key: key);

  // here we made a constructor that return color of this class
  RepeatContainerCode({@required this.colors});
  // here "final" keyword mean, at runtime we update the property of this class's object ("colors")
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        //TODO here we use color variable
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
