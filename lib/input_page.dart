import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0; //must include decimal .0
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
          BottomBar()
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottomBarColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity, //width equal to device size
      height: bottomContainerHeight,
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.cardColor});

  final Color
      cardColor; // establishing a color property to the Reusable Container

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
