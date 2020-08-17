import 'dart:math';

class Calculator {
  int height;
  int weight;
  double _bmi;

  Calculator(this.height, this.weight);
  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpertation() {
    if (_bmi >= 25) {
      return ' You have a higher than normal body weight. Try to Exercise more !';
    } else if (_bmi > 18.5) {
      return 'you have a normal body Weight. Good Job';
    } else {
      return 'you have lower than normal body weight. you should eat more!';
    }
  }
}
