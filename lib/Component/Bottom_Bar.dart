import 'package:flutter/material.dart';
import '../Constants.dart';
class Calculate extends StatelessWidget {
  Calculate({required this.Text4, required this.onTap});
 late final String Text4;
 void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text('$Text4',
           style: TextStyle(fontSize: 50,),),
        ),
        width: double.infinity,
        height: heightOfbottomcontainer,
        color: colorOfbottomcontainer,
        margin: EdgeInsets.only(top: 5.0),
      ),
    );
  }
}