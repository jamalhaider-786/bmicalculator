import 'package:flutter/material.dart';
 class onClick extends StatelessWidget {
  onClick({required this.iconA, required this.onPressed});
  late final IconData iconA;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
                              
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: onPressed,
                              child: Icon(iconA,
                              color: Colors.white,)
                            );
  }
}