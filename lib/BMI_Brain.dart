import 'input_page.dart';
import 'results_page.dart';
import 'dart:math';
class BMIBrain {

  BMIBrain({required this.weight, required this.height});

  final int height;
  final int weight;

  double ? _bmi;

  String calculateBMI(){
    _bmi=weight / pow(height/100, 2);
    return _bmi!.toStringAsFixed(2);  // reduces decimal point up specified digits, converting it to str
  }

  String  getResult(){
    if(_bmi!>=25)
      return "Overweight";

    else if(_bmi!>18.5)
      return 'Normal';

    else return 'Underweight';
  }
  String getInterpretation(){
    if(_bmi!>=25)
      return "Start running";

    else if(_bmi!>18.5)
      return 'Nah man you good';

    else return 'Really need to put on some weight';
  }
}