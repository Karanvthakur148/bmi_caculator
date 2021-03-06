import 'package:bmi_caculator/components/bottom_botton.dart';
import 'package:bmi_caculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.Interpretation, @required this.bmiResult, @required this.resultText});

final String bmiResult;
final String resultText;
final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('BMI CALCULALOR'),
    ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Expanded(
        child: Container(
          padding: EdgeInsets.all(15.0),
    alignment: Alignment.bottomLeft,
    child: Text('Your Result',
    style: kTitleTextStyle,
    ),
),
    ),
  Expanded(
    flex: 5,
    child: ReusableCard(
    colour: kActiveCardColour,
    cardChild: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[Text(
    resultText.toUpperCase(),
    style: kResultTextStyle,
    ),
      Text(
          bmiResult,
        style: kBMITextStyle,
        
      ),
      Text(
      Interpretation,
        textAlign: TextAlign.center,
        style: kBodyTextStyle,
      ),
    ],
    
    ),
    ),
  ),
  BottomButton(
    buttonTitle: 'RE-CALCULATE',
    onTap: () {
      Navigator.pop(context);
    }
  ), ],
),
    );
  }
}
