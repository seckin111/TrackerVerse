import 'package:flutter/material.dart';

import '../../discover_screen/discover_screen.dart';

class PSButton extends StatefulWidget {
  const PSButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
        const SizedBox(
          width: 30,
          height: 70,
        ),
        ElevatedButton(
          onPressed: () {
            _selectButton1();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DiscoverScreen()),
            );
          },
          style: TextButton.styleFrom(
            maximumSize: const Size(750, 300),
            foregroundColor: _button1Selected
                ? const Color.fromARGB(255, 187, 190, 0)
                : const Color.fromARGB(239, 255, 255, 255),
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          ),
          child: const Text('Watching'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            _selectButton2();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DiscoverScreen()),
            );
          },
          style: TextButton.styleFrom(
            maximumSize: const Size(750, 300),
            foregroundColor: _button2Selected
                ? const Color.fromARGB(255, 187, 190, 0)
                : const Color.fromARGB(239, 255, 255, 255),
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          ),
          child: const Text('Watched'),
        ),
      ],
    );
  }
}
