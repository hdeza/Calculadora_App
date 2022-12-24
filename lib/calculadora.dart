class Calculadora {
  double _num1 = 0;
  double _num2 = 0;
  double _result = 0;

  set setNum1(String num) => _num1 = double.parse(num);
  set setNum2(String num) => _num2 = double.parse(num);
  set setResult(String result) => _result = double.parse(result);

  double get getResult => _result;

  void reset() {
    _num1 = 0;
    _num2 = 0;
    _result = 0;
  }

  void suma() => _result = _num1 + _num2;
  void resta() => _result = _num1 - _num2;
  void multiplicar() => _result = _num1 * _num2;
  void dividir() => _result = _num1 / _num2;
}
