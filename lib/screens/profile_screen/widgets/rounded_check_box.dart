import 'package:flutter/material.dart';

class RoundCheckbox extends StatefulWidget {
  @override
  _RoundCheckboxState createState() => _RoundCheckboxState();
}

class _RoundCheckboxState extends State<RoundCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 2),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            : SizedBox(),
      ),
    );
  }
}
