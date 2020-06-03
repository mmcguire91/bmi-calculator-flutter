import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity, //width equal to device size
      height: kBottomBarHeight,
      decoration: kBarColor,
    );
  }
}
