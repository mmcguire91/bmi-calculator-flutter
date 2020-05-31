import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomBarHeight = 60.0; //must include decimal .0
const activeCardColor = Color(0xFF1d1f33); //color of active cards
const bottomBarColor = Color(0xFFea1556); //color of bottom bar

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    cardColor: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8e8e99),
                          ),
                        )
                      ],
                    ),
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
                child: BottomBar(
                  barColor: bottomBarColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  BottomBar({this.barColor});

  final Color barColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity, //width equal to device size
      height: bottomBarHeight,
      decoration: BoxDecoration(
        color: barColor,
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.cardColor, this.cardChild});

  final Color
      cardColor; // establishing a color property to the Reusable Container
  final Widget cardChild; //adding a child property

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
