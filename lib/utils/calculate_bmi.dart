import 'dart:math';


class BmiLogic {
  BmiLogic({required this.height, required this.weight,} );

  final int ? height;
  final int ? weight;

late double _bmi;


String calculateBMI() {
  _bmi = (weight! / pow(height! / 100, 2));
  return _bmi.toStringAsFixed(1);
}

String getResut() {
  if (_bmi >=25) {
    return 'OverWeight';
  }
  else if (_bmi > 18.5) {
    return 'Normal';
  }else {
    return 'Underweight';
  }
}

String getInterpretation() {
  if (_bmi >= 25) {
    return 'You have a higher weight then normal';
  } else if (_bmi >= 18.5) {
    return 'you have normal body weight';

  }else {
    return 'you have a lower then normal body weight.';
  }
}
}