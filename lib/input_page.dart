import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Reusable_Container.dart';
import 'Tile_UI.dart';
import 'Bottom_Bar.dart';
import 'constants.dart';

//instead of having items defined as integers, we are able to define them as strings with enum to simplify our code and avoid confusion
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: TileUI(
                      cardIcon: kMaleIcon,
                      iconLabel: kMaleText,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: TileUI(
                      cardIcon: kFemaleIcon,
                      iconLabel: kFemaleText,
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
                    cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          kHeightText,
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              kHeightMeasurement,
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          //allow modifications to only certain aspects of Slider property
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                            thumbColor: kSecondaryCTAColor,
                            activeTrackColor: kActiveTrackColor,
                            inactiveTrackColor: kInactiveTrackColor,
                            overlayColor: kOverlayColor,
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinHeight.toDouble(),
                            max: kMaxHeight.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
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
                    cardColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    cardColor: kActiveCardColor,
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
