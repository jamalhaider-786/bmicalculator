import 'package:bmicalculator/Component/Colors.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:bmicalculator/Component/reuseableWidget.dart';
import 'package:flutter/material.dart';
import '../Component/Bottom_Bar.dart';
class result_page extends StatelessWidget {
  result_page({required this. BMIResult, required this.resultText, required this.interpretation });
  late final String BMIResult;
  late final String resultText;
  late final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Center(
            child: Text('your Results',
            style:kRText),
          ),
          ),
          Expanded(
          flex: 5,
          child: Resuseablewidget(colour: inactiveCardColor,
           cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text(resultText.toUpperCase(),
            style: RText,),
            Text(BMIResult,
            style: WrText,),
            Text(interpretation,
            style: Ksuggestion,
            ),
            
            
            
            ],

           ),
          )
          
          
          ),
          Calculate(Text4: 'Recalculate', onTap: (){
              Navigator.pop(context);
            })
        ],
      )
    );
  }
}