import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Best practice to label all constants with k to signify they are constants
const kActiveCardColor = Color(0xFF1d1f33); //color of active cards
const kInactiveCardColor = Color(0xFF111328); //0xFF
const kMaleIcon = FontAwesomeIcons.mars;
const kMaleText = 'MALE';
const kFemaleIcon = FontAwesomeIcons.venus;
const kFemaleText = 'FEMALE';
const kBottomBarColor = Color(0xFFea1556); //color of bottom bar
const kBottomBarHeight = 60.0; //must include decimal .0
const kBarColor = BoxDecoration(color: kBottomBarColor);
const kMinHeight = 92;
const kMaxHeight = 244;

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8e8e99),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
