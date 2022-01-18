import 'package:bmi/ReusableCard.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmi,required this.interpretation,required this.result});

  String bmi,interpretation,result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Your Result",
                style: kResultsYTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kResultDescTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi,
                    style: kResultsBMITextStyle,
                  ),
                  Text(interpretation,
                      style: kResultsInterTextStyle,
                      textAlign: TextAlign.center)
                ],
              ), onPress: (){},
            ),
          ),
          BottomButton(
            text: "RE-CALCULATE",
            onTap: (){Navigator.pop(context);},
          ),
        ],
      ),
    );
  }
}
