import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Best practice to label all constants with k to signify they are constants

//Colors
const kActiveCardColor = Color(0xFF1d1f33); //color of active cards
const kInactiveCardColor = Color(0xFF111328); //0xFF
const kSecondaryCTAColor = Color(0xFFea1556); //color of bottom bar
const kOverlayColor = Color(0x29ea1556);
const kActiveTrackColor = Colors.white;
const kInactiveTrackColor = Color(0x808D8E98);

//UI Components
const kMaleText = 'MALE';
const kFemaleText = 'FEMALE';
const kHeightText = 'HEIGHT';
const kHeightMeasurement = 'cm';
const kWeightText = 'WEIGHT (KG)';
const kAgeText = 'AGE';
const kCalculation = 'CALCULATION';
const kReCalculate = 'RE-CALCULATE';
const kMaleIcon = FontAwesomeIcons.mars;
const kFemaleIcon = FontAwesomeIcons.venus;
const kBarColor = BoxDecoration(color: kSecondaryCTAColor);

//Widget Properties
const kBottomBarHeight = 60.0; //must include decimal .0
const kMinHeight = 92;
const kMaxHeight = 244;

//Text Styles
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8e8e99),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kResultTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kBodyTypeTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
  color: Color(0xFF21c970),
);

const kBMIResultTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);

const kBMICTA = TextStyle(
  fontSize: 22.0,
);
