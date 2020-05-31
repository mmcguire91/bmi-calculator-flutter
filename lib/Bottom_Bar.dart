import 'package:flutter/material.dart';

const bottomBarColor = Color(0xFFea1556); //color of bottom bar
const bottomBarHeight = 60.0; //must include decimal .0
const barColor = BoxDecoration(
  color: bottomBarColor,
);

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity, //width equal to device size
      height: bottomBarHeight,
      decoration: barColor,
    );
  }
}
