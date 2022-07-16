import 'package:flutter/material.dart';

late String input = '';
late Icon inputIcon;

//icon Button
class CalIconButton extends StatefulWidget {
  late Icon? btnIcon;
  late Color? btnColor;
  CalIconButton({
    this.btnIcon,
    this.btnColor,
  });

  @override
  State<CalIconButton> createState() => _CalIconButtonState();
}

class _CalIconButtonState extends State<CalIconButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            inputIcon = widget.btnIcon!;
            if (inputIcon ==
                Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 24,
                )) {
              //call the calculation function
            }
          });
        },
        child: Container(
          child: widget.btnIcon,
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
          color: widget.btnColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

//Text Button
class CalButton extends StatefulWidget {
  String? value = '';
  late Color? btnColor;

  CalButton({
    this.value,
    this.btnColor,
  });

  @override
  State<CalButton> createState() => _CalButtonState();
}

class _CalButtonState extends State<CalButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            input = widget.value!;
            // print(input);
          });
        },
        child: Container(
          child: Text(
            widget.value!,
            style: TextStyle(
              fontSize: 38.0,
              color: Colors.white,
            ),
          ),
          // color: Color(0xFFAD1457),
          color: widget.btnColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
