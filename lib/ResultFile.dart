import 'package:flutter/material.dart';
import 'ConstantFile.dart';
import 'ContainerFile.dart';
import 'InputPage.dart';

class ResultScreen extends StatelessWidget {
  //TODO here variables are define
  final bmiResult;
  final resultCriteria;
  final resultDescription;
  ResultScreen(
      {@required this.bmiResult, this.resultCriteria, this.resultDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TODO Row 1
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result...',
                  //TODO Access "ConstantFile" Functionality
                  style: ResultTitleStyle,
                ),
              ),
            ),
          ),
          //TODO Row 2
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultCriteria.toUpperCase(),
                    //TODO Access "ConstantFile" Functionality
                    style: ResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    //TODO Access "ConstantFile" Functionality
                    style: ResultStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    resultDescription,
                    //TODO Access "ConstantFile" Functionality
                    style: LabelStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          //TODO Row 3
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Again Calculate',
                    //TODO Access "ConstantFile" Functionality
                    style: CalculateButtonStyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
