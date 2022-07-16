
import 'package:flutter/material.dart';

import 'butons.dart';

class CalculatorSreen extends StatelessWidget {
  const CalculatorSreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
