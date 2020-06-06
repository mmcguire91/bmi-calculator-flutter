import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Views/input_page.dart';
import '../components/Bottom_Bar.dart';
import '../components/Reusable_Container.dart';
import 'package:bmi_calculator/BMI_Calculator_logic.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bodyType,
      @required this.bMIResult,
      @required this.bodyTypeCTA});

  String bodyType = 'Normal';
  String bMIResult = '0';
  String bodyTypeCTA = 'Keep it up!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Results'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //TITLE
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kResultTitleTextStyle,
                ),
              ),
            ),
          ),

          //BMI RESULTS
          Expanded(
            flex: 5, //take up 5x space relative to other widgets in column
            child: ReusableContainer(
              cardColor: kActiveCardColor,
//              margin: EdgeInsets.all(15.0),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bodyType.toString(),
                    style: kBodyTypeTextStyle,
                  ),
                  Text(
                    bMIResult.toString(),
                    style: kBMIResultTextStyle,
                  ),
                  Text(
                    bodyTypeCTA.toString(),
                    style: kBMICTA,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: BottomBar(
                  //NAVIGATE TO RESULTS PAGE
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InputPage(),
                      ),
                    );
                  },
                  //END NAVIGATION LOGIC
                  bottomBarLabel: kReCalculate,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
