// ignore_for_file: annotate_overrides, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'authentications.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profilePage> {
  bool _isSigningOut = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final firestoreInstance = FirebaseFirestore.instance;

  String _name = "";
  String _major = "";
  String _email = "";
  String _birthday = "";

  _getUserAuth() {
    var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
    firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
      if (mounted) {
        setState(() {
          _name = value.data()!["name"];
          _major = value.data()!["major"];
          _email = value.data()!["email"];
          _birthday = value.data()!["birthday"];
        });
      }
    });
  }

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(),
      child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(),
              const SizedBox(height: 8.0),
              Center(
                // child: CircleAvatar(
                //   radius: 60.0,
                //   child: Authentication().getProfileImage(),
                // ),
                child: Authentication().getProfileImage(),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: ListView(
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.portrait),
                              onTap: _getUserAuth(),
                              title: Text('Name: ' + _name,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                  )),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.school),
                              onTap: _getUserAuth(),
                              title: Text('Major: ' + _major,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                  )),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.mail),
                              onTap: _getUserAuth(),
                              title: Text('Email: ' + _email,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                  )),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.cake),
                              onTap: _getUserAuth(),
                              title: Text('Birthday: ' + _birthday,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                  )),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 15.0),
              _isSigningOut
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      onPressed: () async {
                        // createRecord();
                        setState(() {
                          _isSigningOut = true;
                        });
                        await Authentication.signOut(context: context);
                        setState(() {
                          _isSigningOut = false;
                        });
                        Navigator.of(context)
                            .pushReplacement(_routeToSignInScreen());
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ))
            ],
          )),
    )));
  }
}

  // hardcoded Database
//   void createRecord() {
//     databaseReference.child("Jason Cheung").set({
//       'major': "Computer Science",
//       'email': "jcheung1@pride.hofstra.edu",
//       'birthday': "October 21, 2001"
//     });
//     databaseReference.child("Mike Raymond").set({
//       'major': "Computer Science",
//       'email': "mraymond2@pride.hofstra.edu",
//       'birthday': "December 1, 2000"
//     });
//   }
// } 

// class _ProfilePageState extends State<profilePage> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CircleAvatar(
//             radius: 60,
//             backgroundImage: AssetImage("lib/img/test.jpg"),
//           ),
//           // Creates space between pfp pic and description
//           SizedBox(height: 10.0),
//           Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   children: [
//                     Text("Name: Jason Cheung",
//                         style: TextStyle(
//                           fontSize: 14.0,
//                         )),
//                     Text("Major: Computer Science",
//                         style: TextStyle(
//                           fontSize: 14.0,
//                         )),
//                     Text("Email: jcheung1@pride.hofstra.edu",
//                         style: TextStyle(
//                           fontSize: 14.0,
//                         )),
//                     Text("Birthday: October 21, 2001",
//                         style: TextStyle(
//                           fontSize: 14.0,
//                         )),
//                   ],
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
