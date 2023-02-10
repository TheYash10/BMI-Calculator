import 'package:flutter/material.dart';
import 'package:bmi/Constants.dart';

class CalculateContainer extends StatelessWidget {
  const CalculateContainer({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: kLabelBigTextStyle,
        ),
      ),
      color: const Color(0xFFF83058),
      margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: kBottomHeightContainer,
    );
  }
}
