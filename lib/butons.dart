import 'package:flutter/material.dart';

//icon Button
class CalIconButton extends StatelessWidget {
  late Icon? btnIcon;
  late Color? btnColor;
  CalIconButton({
    this.btnIcon,
    this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: btnIcon,
        // Icon(
        //   Icons.remove,
        //   color: Colors.white,
        //   size: 24.0,
        // ),
        // Text(
        //   '-',
        //   style: TextStyle(
        //     fontSize: 38.0,
        //     color: Colors.white,
        //   ),
        // ),
        color: btnColor,
        alignment: Alignment.center,
      ),
    );
  }
}

//Text Button
class CalButton extends StatelessWidget {
  String? value = '';
  late Color? btnColor;

  CalButton({
    this.value,
    this.btnColor,
  });

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
