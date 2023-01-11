import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // My HomeScreen
    // return DiscoverScreen(); // My DiscoverScreen
    // return ProfileScreen(); // My ProfileScreen
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        mouseCursor: MouseCursor.uncontrolled,
        selectedIconTheme: IconThemeData(
          shadows: [
            Shadow(
              blurRadius: 40,
              color: AppColors.primaryBlue,
            )
          ],
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_outlined),
            label: 'My Picks',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromRGBO(200, 200, 200, 60),
        selectedItemColor: AppColors.primaryBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
