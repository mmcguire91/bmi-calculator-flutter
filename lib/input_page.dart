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

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //defining logic for color change on tap
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  //male = 1, female = 2
  void updateColor(int gender) {
    //male
    if (gender == 1) {
      //if the user taps on the male card and it is inactive color, change to active color
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        //retain inactive color
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      //if the user taps on the female card and it is inactive color, change to active color
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        //retain inactive color
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableContainer(
                      cardColor: maleCardColor,
                      cardChild: TileUI(
                        cardIcon: maleIcon,
                        iconLabel: maleText,
                      ),
                    ),
                  ), //refactored container
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableContainer(
                      cardColor: femaleCardColor,
                      cardChild: TileUI(
                        cardIcon: femaleIcon,
                        iconLabel: femaleText,
                      ),
                    ),
                  ), //refactored container
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
                  ), //refactored container
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
                  ), //refactored container
                ),
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                  ), //refactored container
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
