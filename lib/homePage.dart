import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hofstra University'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Diner'), icon: Icon(Icons.restaurant)),
          BottomNavigationBarItem(
              title: Text('Calendar'), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: Text('Setting'), icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
