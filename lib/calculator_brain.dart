import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final double height;
  final double weight;

  double _bmi;

  String bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25.0) {
      return 'OVERWEIGHT';
    } else if (_bmi < 18.5) {
      return 'NORMAL';
    }
    return 'NORMAL';
  }
}
