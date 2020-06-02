import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Container.dart';
import 'Tile_UI.dart';
import 'Bottom_Bar.dart';

const activeCardColor = Color(0xFF1d1f33); //color of active cards
const inactiveCardColor = Color(0xFF111328); //0xFF
const maleIcon = FontAwesomeIcons.mars;
const maleText = 'MALE';
const femaleIcon = FontAwesomeIcons.venus;
const femaleText = 'FEMALE';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    //when pressed change the selected properties to those associated with Male
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    //if the user selected male, card color active, else card color inactive
                    cardColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: TileUI(
                      cardIcon: maleIcon,
                      iconLabel: maleText,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    //when pressed change the selected properties to those associated with Female
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    //if the user selected female, card color active, else card color inactive
                    cardColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: TileUI(
                      cardIcon: femaleIcon,
                      iconLabel: femaleText,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: BottomBar(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
