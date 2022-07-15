import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  return runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFFF5733),
          title: Text(
            'CALCULATOR',
            style: GoogleFonts.bitter(
              textStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: .5,
                  fontSize: 38),
            ),
            // style: TextStyle(
            //   fontSize: 38.0,
            // ),
          ),
        ),
      ),
    );
  }
}
