import 'package:flutter/material.dart';

const iconLabelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8e8e99),
);

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
          style: iconLabelStyle,
        )
      ],
    );
  }
}
