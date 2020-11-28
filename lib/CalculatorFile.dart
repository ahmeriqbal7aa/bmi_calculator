import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorStore {
  CalculatorStore({@required this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  //TODO Below are Member Functions
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  //result method
  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  //description method
  String getDescription() {
    if (_bmi >= 25) {
      return 'You have a higher than body normal weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Work!';
    } else {
      return 'You have a lower than body weight.You can eat a bit more!';
    }
  }
}
