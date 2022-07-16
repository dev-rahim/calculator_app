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
      theme: ThemeData(fontFamily: 'AbhayaLibre'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFAD1457),
          title: Text(
            'CALCULATOR',
            style: TextStyle(
              fontSize: 38.0,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '12+2',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                      ])
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  CalButton(
                    value: '1',
                    btnColor: Color(0xFFAD1457),
                  ),
                  CalButton(
                    value: '2',
                    btnColor: Color(0xFFc21850),
                  ),
                  CalButton(
                    value: '3',
                    btnColor: Color(0xFFd81860),
                  ),
                  CalButton(
                    value: '+',
                    btnColor: Color(0xFFe91e63),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFc21850),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '5',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFd81860),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '6',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFe91e63),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      // Text(
                      //   '-',
                      //   style: TextStyle(
                      //     fontSize: 38.0,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      color: Color(0xFFAD1457),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        '7',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFAD1457),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '8',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFc21850),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '9',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFd81860),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      // child: Text(
                      //   '+',
                      //   style: TextStyle(
                      //     fontSize: 38.0,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      color: Color(0xFFe91e63),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFc21850),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'C',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFd81860),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '=',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFe91e63),
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // child: Icon(
                      //   Icons.remove,
                      //   color: Colors.white,
                      //   size: 24.0,
                      // ),
                      child: Text(
                        '/',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFAD1457),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalButton extends StatelessWidget {
  String? value = '';
  late Color? btnColor;
  CalButton({this.value, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          value!,
          style: TextStyle(
            fontSize: 38.0,
            color: Colors.white,
          ),
        ),
        // color: Color(0xFFAD1457),
        color: btnColor,
        alignment: Alignment.center,
      ),
    );
  }
}
