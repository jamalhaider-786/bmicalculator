import 'package:flutter/material.dart';
import '../Constants.dart';

class reuseableChildcard extends StatelessWidget {
  reuseableChildcard({required this.fontAwesomeIcon, required this.Icontitle});
  final IconData fontAwesomeIcon;
  final String Icontitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesomeIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$Icontitle',
          style: textStyle,
        ),
      ],
    );
  }
}
