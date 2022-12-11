import 'package:flutter/material.dart';

class Resuseablewidget extends StatelessWidget {
  Resuseablewidget({required this.colour, required this.cardChild,});
  final Color colour;
  final Widget cardChild;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      // ignore: prefer_const_constructors
    
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
