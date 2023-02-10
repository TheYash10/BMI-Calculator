import 'package:flutter/material.dart';
import 'package:bmi/Constants.dart';

class Expand1design extends StatelessWidget {
  Expand1design({required this.iconText, required this.icon});

  final IconData icon;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
