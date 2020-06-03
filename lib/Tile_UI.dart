import 'package:flutter/material.dart';
import 'constants.dart';

class TileUI extends StatelessWidget {
  TileUI({this.cardIcon, this.iconLabel});

  final IconData cardIcon;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
