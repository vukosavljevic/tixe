import 'package:flutter/material.dart';
import 'package:tixehr/screens/home/home.dart';

class THMainScreen extends StatefulWidget {
  /// Constructs a [HomeScreen]
  const THMainScreen({super.key});

  @override
  State<THMainScreen> createState() => _THMainScreenState();
}

class _THMainScreenState extends State<THMainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const THHomeScreen(),
    secondScreen(),
    secondScreen(),
  ];

  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Add product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTapped,
      ),
    );
  }
}

Widget secondScreen(){
  return const Text("drugi screen");
}