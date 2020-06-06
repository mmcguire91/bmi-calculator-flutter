import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.cardColor, this.cardChild, this.onPressed});

  final Color
      cardColor; // establishing a color property to the Reusable Container
  final Widget cardChild; //adding a child property
  final Function
      onPressed; //function when user selects gender card, detects onTap property associated with Gesture Detector

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
