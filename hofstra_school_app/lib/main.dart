import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hofstra_school_app/sign_in_screen.dart';
// import 'server/server_function.dart';
import 'appPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hofstra University Student App',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: appPage());
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong');
            } else if (snapshot.hasData) {
              // return appPage();
              return SignInScreen();
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
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
