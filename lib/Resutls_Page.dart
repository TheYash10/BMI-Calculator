import 'package:bmi/Constants.dart';
import 'package:bmi/Reusable_Container.dart';
import 'package:flutter/material.dart';
import 'Calculate_Container.dart';

class Results_Page extends StatelessWidget {
  const Results_Page(
      {Key? key,
      required this.value,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String resultText;
  final String value;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: activeCardContainer,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    value,
                    style: kBmiAnsTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kCommentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CalculateContainer(
                text: 'RE-CALCULATE',
              ),
            ),
          )
        ],
      ),
    );
  }
}
