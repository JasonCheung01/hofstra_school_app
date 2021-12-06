import 'package:flutter/material.dart';
import 'homePage.dart';
import 'dinerPage.dart';
import 'reminderPage.dart';
import 'profilePage.dart';

class appPage extends StatefulWidget {
  @override
  State<appPage> createState() => _AppPageState();
}

class _AppPageState extends State<appPage> {
  int current_idx = 0;
  Icon customIcon = const Icon(Icons.search);

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
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: () {
        //       setState(() {
        //         if (customIcon.icon == Icons.search) {
        //           customIcon = new Icon(Icons.close);
        //           Widget _searchbar = ListTile(
        //             leading: Icon(
        //               Icons.search,
        //               color: Colors.black,
        //               size: 28,
        //             ),
        //             title: TextField(
        //               decoration: InputDecoration(
        //                 hintText: 'Search...',
        //                 hintStyle: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 16,
        //                 ),
        //                 border: InputBorder.none,
        //               ),
        //               style: TextStyle(color: Colors.black),
        //             ),
        //           );
        //         } else {
        //           customIcon = const Icon(Icons.search);
        //         }
        //       });
        //     },
        //     icon: customIcon,
        //     color: Colors.black,
        //   )
        //],
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
              title: Text('Reminder'), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: Text('Profile'), icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
