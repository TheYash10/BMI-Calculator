import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.greenAccent)
            .copyWith(primary: const Color(0xFF0E0F20)),
        scaffoldBackgroundColor: const Color(0xFF0E0F20),
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(color: Colors.white),
        // ),
      ),
      home: const InputPage(),
    );
  }
}
