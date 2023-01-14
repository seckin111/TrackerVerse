import 'package:flutter/material.dart';

class PSButton extends StatefulWidget {
  @override
  _PSButtonState createState() => _PSButtonState();
}

class _PSButtonState extends State<PSButton> {
  bool _button1Selected = true;
  bool _button2Selected = false;

  void _selectButton1() {
    setState(() {
      _button1Selected = true;
      _button2Selected = false;
    });
  }

  void _selectButton2() {
    setState(() {
      _button1Selected = false;
      _button2Selected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
          height: 50,
        ),
        ElevatedButton(
          onPressed: _selectButton1,
          style: TextButton.styleFrom(
            maximumSize: Size(500, 200),
            foregroundColor: _button1Selected
                ? Color.fromARGB(255, 187, 190, 0)
                : Color.fromARGB(239, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Text('Watching'),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: _selectButton2,
          style: TextButton.styleFrom(
            minimumSize: Size(100, 50),
            maximumSize: Size(100, 50),
            foregroundColor: _button2Selected
                ? Color.fromARGB(255, 187, 190, 0)
                : Color.fromARGB(239, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Text('Watched'),
        ),
      ],
    );
  }
}
