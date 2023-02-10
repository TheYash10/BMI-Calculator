import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.weight, required this.height});
  final int weight;
  final int height;
  double _bmi = 26;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return 'UnderWeight';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Normal';
    } else {
      return 'OverWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI result is quite high.You need to do exercise regularly..';
    } else if (_bmi >= 18.5) {
      return 'You are Healthy..';
    } else {
      return 'Your BMI result is low.You need to eat more..';
    }
  }
}
