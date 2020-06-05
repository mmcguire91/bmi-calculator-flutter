import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Container.dart';
import 'Tile_UI.dart';
import 'Bottom_Bar.dart';
import 'constants.dart';
import 'Round_Icon_Button.dart';
import 'Results_page.dart';

//instead of having items defined as integers, we are able to define them as strings with enum to simplify our code and avoid confusion
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 130;
  int age = 30;

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
          //Gender Tiles
          Expanded(
            child: Row(
              children: <Widget>[
                //MALE TILE
                Expanded(
                  child: ReusableContainer(
                    //when pressed change the selected properties to those associated with Male
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    //if the user selected male, card color active, else card color inactive
                    //ternary operator
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: TileUI(
                      cardIcon: kMaleIcon,
                      iconLabel: kMaleText,
                    ),
                  ),
                ),
                //FEMALE TILE
                Expanded(
                  child: ReusableContainer(
                    //when pressed change the selected properties to those associated with Female
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    //if the user selected female, card color active, else card color inactive
                    //ternary operator
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
          //SLIDER
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
                          textBaseline: TextBaseline
                              .alphabetic, //required to use baseline property
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              kHeightMeasurement,
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        //SLIDER UI
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
                          //SLIDER FUNCTIONALITY
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
          //WEIGHT AND AGE TILES
          Expanded(
            child: Row(
              children: <Widget>[
                //WEIGHT TILE
                Expanded(
                  child: ReusableContainer(
                    cardColor: kActiveCardColor,
                    //weight
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          kWeightText,
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //subtract weight
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            //space between buttons
                            SizedBox(
                              width: 10.0,
                            ),
                            //add weight
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                        //addition, subtraction end
                      ],
                    ),
                    //end weight
                  ),
                ),
                //AGE TILE
                Expanded(
                  child: ReusableContainer(
                    cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          kAgeText,
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //subtract age
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            //space between buttons
                            SizedBox(
                              width: 10.0,
                            ),
                            //add age
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                        //addition, subtraction end
                      ],
                    ),
                    //end age
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              //BOTTOM BAR
              Expanded(
                child: BottomBar(
                  //NAVIGATE TO RESULTS PAGE
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsPage(),
                      ),
                    );
                  },
                  bottomBarLabel: kCalculation,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
