class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
    print(_bmi);
    return _bmi.round().toString();
  }

  String weightStatus() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String weightInterpretation() {
    if (_bmi > 25) {
      return 'Your a bit overweight. Try to exercise more.';
    } else if (_bmi > 18) {
      return "Normal weight. Good job";
    } else {
      return "Your a bit underweight. Try to exercise more.";
    }
  }
}
