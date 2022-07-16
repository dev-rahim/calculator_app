import 'package:flutter/material.dart';

import 'calculatorScreen.dart';

void main(List<String> args) {
  return runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'AbhayaLibre'),
      home: CalculatorSreen(),
    );
  }
}
