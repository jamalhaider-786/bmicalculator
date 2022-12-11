import 'package:bmicalculator/Calculator_Brain.dart';

import '../Component/age_functionality.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Component/card_content.dart';
import '../Component/reuseableWidget.dart';
import '../Constants.dart';
import '../Component/Colors.dart';
import '../Component/Weight_Functionality.dart';
import 'result_page.dart';
import '../Component/Bottom_Bar.dart';
import '../main.dart';

enum gender {
  male,
  female,
}

int height = 120;
int weight = 60;
int age = 10;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  },
                  child: Resuseablewidget(
                    colour: selectedGender == gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: Center(
                      child: reuseableChildcard(
                        fontAwesomeIcon: maleIcon,
                        Icontitle: text1,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                  child: Resuseablewidget(
                    colour: selectedGender == gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: Center(
                      child: reuseableChildcard(
                        fontAwesomeIcon: femaleIcon,
                        Icontitle: text2,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Resuseablewidget(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: textStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: ktextStyle,
                      ),
                      Text(
                        'cm',
                        style: textStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        print(newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(
              children: [
                Expanded(
                  // ignore: prefer_const_constructors
                  child: Resuseablewidget(
                    colour: activeCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'weight',
                          style: textStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: ktextStyle,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_im,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyIcon(icon:FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weight++;
                                
                              });
                            },
                             ),
                            SizedBox(
                              width: 10,
                            ),
                            MyIcon(icon:FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                                
                              });
                            },
                            
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Resuseablewidget(
                    colour: activeCardColor,
                    cardChild: Column(
                      children: [
                        Text('Age',
                        style: textStyle,),
                        Text(age.toString(),
                        style: ktextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            onClick(iconA: FontAwesomeIcons.plus, onPressed: (() {
                              setState(() {
                                age++;
                              });
                              
                              
                            }),
                           
                            ),
                             SizedBox(
                              width: 10,
                             ),
                             onClick(iconA: FontAwesomeIcons.minus, onPressed: (() {
                              setState(() {
                                age--;
                              });
                              
                              
                            }),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Calculate(Text4: 'Calculate',  onTap: () {
            Calculator_Brain calc = Calculator_Brain(height: height, Weight: weight);
            Navigator.push(context, MaterialPageRoute(
                       builder: (context){
                          return result_page(
                             BMIResult: calc.CalculateBMI(),
                             resultText: calc.getResult(),
                             interpretation: calc.Enterpotation(),
                          );
                       }
                     ));
            
          },),
        ],
      ),
    );
  }
}



