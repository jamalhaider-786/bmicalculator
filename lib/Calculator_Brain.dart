import 'dart:math';

class Calculator_Brain {
  
  Calculator_Brain({required this.height, required this.Weight});
  
  final int height;
  final int Weight;
  late double _bmi;
  String CalculateBMI(){
    _bmi = Weight/pow(height/100, 2);    
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if (_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'underweight';
    }
  }
  String Enterpotation(){
    if(_bmi>=25){
      return 'Overweight';
    }else if (_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'underweight';
    }

  }
}