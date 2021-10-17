import 'package:flutter/material.dart';
import 'homePage.dart';
import 'dinerPage.dart';
import 'calendarPage.dart';
import 'profilePage.dart';

class appPage extends StatefulWidget {
  @override
  State<appPage> createState() => _AppPageState();
}

class _AppPageState extends State<appPage> {
  int current_idx = 0;
  final List<Widget> _iconPages = [
    homePage(),
    dinerPage(),
    calendarPage(),
    profilePage(),
  ];

  void tappedIcon(int idx) {
    setState(() {
      current_idx = idx;
    });
  }

// This builds our bottom navigation bar
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "lib/img/hofstra_university_logo.jpg",
          height: 120.0,
          width: 170.0,
        ),
      ),

      // This is what allows us to switch pages when you click on the icon at the bottom navigator
      body: _iconPages[current_idx],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: tappedIcon,
        currentIndex: current_idx,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Diner'), icon: Icon(Icons.restaurant)),
          BottomNavigationBarItem(
              title: Text('Calendar'), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: Text('Profile'), icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
