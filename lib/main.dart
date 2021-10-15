import 'package:flutter/material.dart';
import './homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: homePage());
  }
}


// class _HomePageState extends State<homePage> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hofstra University'),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Row(
//             children: <Widget>[
//               IconButton(
//                 tooltip: 'Home',
//                 icon: const Icon(Icons.home),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 tooltip: 'Diner Schedule',
//                 icon: const Icon(Icons.restaurant),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 tooltip: 'Calendar',
//                 icon: const Icon(Icons.calendar_today),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 tooltip: 'Account Setting',
//                 icon: const Icon(Icons.settings),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ));
//   }
// }

