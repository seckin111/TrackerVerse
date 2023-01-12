import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';

import '../screens/discover_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // My HomeScreen
    DiscoverScreen(), // My DiscoverScreen
    ProfileScreen(), // My ProfileScreen
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
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
            label: 'My Page',
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
