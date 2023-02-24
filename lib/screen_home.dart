import 'package:amazonajmal/Screen_Add.dart';
import 'package:amazonajmal/main_Screen.dart';
import 'package:amazonajmal/screen_Account.dart';
import 'package:amazonajmal/screen_Settings.dart';
import 'package:amazonajmal/screen_cart.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

int _CurrentIndexNumber = 0;
final _List = [
  MainScreen(),
  ScreenAccount(),
  ScreenAdd(),
  ScreenCart(),
  ScreenSettings(),
];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _List[_CurrentIndexNumber],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _CurrentIndexNumber,
        onTap: (newIndex) {
          setState(() {
            _CurrentIndexNumber = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_sharp), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.dehaze), label: 'Settings')
        ],
      ),
    );
  }
}
