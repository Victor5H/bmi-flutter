import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(
      {required this.onTap, required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {onTap();},
      child: Container(
        child: Center(
            child: Text(
          text,
          style: kCalculateTextStyle,
        )),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kBottomContainerColor,
        ),
      ),
    );
  }
}
