import 'package:flutter/material.dart';

import 'butons.dart';

class CalculatorSreen extends StatefulWidget {
  const CalculatorSreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorSreen> createState() => _CalculatorSreenState();
}

class _CalculatorSreenState extends State<CalculatorSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR SECTON START
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
      // APPBAR SECTON START
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // RESULT OUTPUT SECTION START
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          // RESULT OUTPUT SECTION START
          // BUTTONS START HEARE
          //ROW 1 START
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
          //ROW 2 START
          Expanded(
            flex: 1,
            child: Row(
              children: [
                CalButton(
                  value: '4',
                  btnColor: Color(0xFFc21850),
                ),
                CalButton(
                  value: '5',
                  btnColor: Color(0xFFd81860),
                ),
                CalButton(
                  value: '6',
                  btnColor: Color(0xFFe91e63),
                ),
                CalIconButton(
                  btnIcon: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 24,
                  ),
                  btnColor: Color(0xFFAD1457),
                ),
              ],
            ),
          ),
          //ROW 3 START
          Expanded(
            flex: 1,
            child: Row(
              children: [
                CalButton(
                  value: '7',
                  btnColor: Color(0xFFAD1457),
                ),
                CalButton(
                  value: '8',
                  btnColor: Color(0xFFc21850),
                ),
                CalButton(
                  value: '9',
                  btnColor: Color(0xFFd81860),
                ),
                CalIconButton(
                  btnIcon: Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: 24.00,
                  ),
                  btnColor: Color(0xFFe91e63),
                )
              ],
            ),
          ),
          //ROW 4 START
          Expanded(
            flex: 1,
            child: Row(
              children: [
                CalButton(
                  value: '0',
                  btnColor: Color(0xFFe91e63),
                ),
                CalButton(
                  value: 'C',
                  btnColor: Color(0xFFd81860),
                ),
                CalButton(
                  value: '=',
                  btnColor: Color(0xFFe91e63),
                ),
                CalButton(
                  value: '/',
                  btnColor: Color(0xFFAD1457),
                ),
              ],
            ),
          ),
          // BUTTONS END HEARE
        ],
      ),
    );
  }
}
