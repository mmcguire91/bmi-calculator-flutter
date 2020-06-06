import 'package:flutter/material.dart';

int weight = 130;

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
  });

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon), //defining icon property
      onPressed: onPressed, //defining onPressed property
      elevation: 0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 47.0,
        height: 47.0,
      ),
    );
  }
}
