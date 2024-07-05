import 'package:flutter/material.dart';
import 'package:tixehr/constants/colors.dart';
import 'package:tixehr/constants/images.dart';

import 'home/home.dart';

class THMainScreen extends StatefulWidget {
  const THMainScreen({super.key});

  @override
  State<THMainScreen> createState() => _THMainScreenState();
}

class _THMainScreenState extends State<THMainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    THHomeScreen(),
    Text(
      'Index 1: Business',
      style: TextStyle(color: THColors.darkColor),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(color: THColors.darkColor),
    ),
    Text(
      'Index 3: Profile',
      style: TextStyle(color: THColors.darkColor),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: THColors.redColor,
        unselectedItemColor: THColors.darkColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(THImages.homeIcon),
              activeIcon: Image.asset(THImages.homeIcon, color: THColors.redColor),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(THImages.searchIcon),
              activeIcon:
                  Image.asset(THImages.searchIcon, color: THColors.redColor),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset(THImages.dollarSignIcon),
              activeIcon: Image.asset(THImages.dollarSignIcon,
                  color: THColors.redColor),
              label: "Buy & Sell"),
          BottomNavigationBarItem(
              icon: Image.asset(THImages.userIcon),
              activeIcon:
                  Image.asset(THImages.userIcon, color: THColors.redColor),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
