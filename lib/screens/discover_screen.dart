import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  bool _isButton1Selected = false;
  bool _isButton2Selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 220,
                height: 44.0,
                decoration: BoxDecoration(
                  color: _isButton1Selected ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  child: Text('Watching'),
                  onPressed: () {
                    setState(() {
                      _isButton1Selected = true;
                      _isButton2Selected = false;
                    });
                  },
                ),
              )
            ],
          ),
          const SizedBox(width: 5.0),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 220,
                height: 44.0,
                decoration: BoxDecoration(
                  color: _isButton2Selected ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  child: Text('Watched'),
                  onPressed: () {
                    setState(() {
                      _isButton1Selected = false;
                      _isButton2Selected = true;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
