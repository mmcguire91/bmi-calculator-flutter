import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.onPressed, this.bottomBarLabel});
  final Function onPressed;
  final String bottomBarLabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Text(
          bottomBarLabel,
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity, //width equal to device size
        height: kBottomBarHeight,
        decoration: kBarColor,
      ),
    );
  }
}
