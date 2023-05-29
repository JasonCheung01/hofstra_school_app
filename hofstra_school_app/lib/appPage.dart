// ignore_for_file: deprecated_member_use, non_constant_identifier_names, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'authentications.dart';
import 'homePage.dart';
import 'dinerPage.dart';
import 'reminderPage.dart';
import 'profilePage.dart';

class appPage extends StatefulWidget {
  const appPage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  State<appPage> createState() => _AppPageState();
}

class _AppPageState extends State<appPage> {
  int current_idx = 0;
  Icon customIcon = const Icon(Icons.search);
  late User _user;

  final List<Widget> _iconPages = [
    homePage(),
    dinerPage(),
    reminderPage(),
    profilePage(),
  ];

  void tappedIcon(int idx) {
    setState(() {
      current_idx = idx;
    });
  }

  @override
  void initState() {
    _user = widget._user;
    super.initState();
  }

// This builds our bottom navigation bar
  @override
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
        items: const [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Diner'), icon: Icon(Icons.restaurant)),
          BottomNavigationBarItem(
              title: Text('Reminder'), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: Text('Profile'), icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
