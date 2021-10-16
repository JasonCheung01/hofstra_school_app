import 'package:flutter/material.dart';
import 'appPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hofstra University Student App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: appPage());
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

