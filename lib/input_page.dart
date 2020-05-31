import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Container.dart';
import 'Tile_UI.dart';
import 'Bottom_Bar.dart';

const activeCardColor = Color(0xFF1d1f33); //color of active cards
const maleIcon = FontAwesomeIcons.mars;
const maleText = 'MALE';
const femaleIcon = FontAwesomeIcons.venus;
const femaleText = 'FEMALE';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    cardColor: activeCardColor,
                    cardChild: TileUI(
                      cardIcon: maleIcon,
                      iconLabel: maleText,
                    ),
                  ), //refactored container
                ),
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                    cardChild: TileUI(
                      cardIcon: femaleIcon,
                      iconLabel: femaleText,
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
