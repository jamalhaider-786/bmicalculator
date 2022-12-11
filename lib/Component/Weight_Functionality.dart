import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  MyIcon({required this.icon, required this.onPressed});
  
  late final IconData icon;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
                              
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: onPressed,
                              child: Icon(icon,
                              color: Colors.white,)
                            );

  }
}