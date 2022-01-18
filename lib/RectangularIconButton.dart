import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'constants.dart';

class RectangularIconButton extends StatelessWidget {
  RectangularIconButton(
      {required this.iconData,  required this.onPressed});

  VoidCallback  onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPressed,
      disabledElevation: 6.0,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      fillColor: kRoundButtonsColor,
    );
  }
}