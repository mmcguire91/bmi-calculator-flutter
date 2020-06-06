import 'package:flutter/material.dart';
import 'dart:math';

class BMICalcLogic {
  BMICalcLogic({
    this.height,
    this.weight,
  });

  final int height;
  final int weight;

  double _bmi;

  String bMIResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); //display with 1 decimal place
  }

  String bodyType() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String bodyTypeCTA() {
    if (_bmi >= 25) {
      return 'Try to get more active. Watch what you eat.';
    } else if (_bmi > 18.5) {
      return 'Looking good! Keep it up slick!';
    } else {
      return 'You\'re underweight, eat more!';
    }
  }
}
