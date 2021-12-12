import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hofstra_school_app/appPage.dart';
import 'authentications.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;
  final firestoreInstance = FirebaseFirestore.instance;
  // final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: _isSigningIn
          ? const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () async {
                setState(() {
                  _isSigningIn = true;
                });

                User? user =
                    await Authentication.signInWithGoogle(context: context);

                setState(() {
                  _isSigningIn = false;
                });

                if (user != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => appPage(
                              user: user,
                            )),
                  );
                  createRecord();
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(
                      image: AssetImage("lib/img/google_logo.png"),
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }

  void createRecord() {
    var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
    firestoreInstance.collection("users").doc(firebaseUser).set({
      "name": "Jason Cheung",
      "major": "Computer Science",
      "email": "jcheung1@pride.hofstra.edu",
      "birthday": "October 21, 2001",
      "class_schedule": {
        "class1": "CSC 120: Algorithm & Data Structure",
        "class2": "CSC 161: Intro Automata Theory",
        "class3": "CSC 184: Mobile Device Programming",
        "class4": "CSC 289: Advance Software Engineering",
        "class5": "ENGL 181: Graphic Novel Literature"
      }
    }).then((value) {});

    // firestoreInstance.collection("users").doc(firebaseUser).set({
    //   "name": "Mike Raymond",
    //   "major": "Computer Science",
    //   "email": "mraymond2@pride.hofstra.edu",
    //   "birthday": "December 1, 2000"
    // }).then((value) {
    //   // print("");
    // });

    // databaseReference.child("Jason Cheung").set({
    //   'major': "Computer Science",
    //   'email': "jcheung1@pride.hofstra.edu",
    //   'birthday': "October 21, 2001"
    // });
    // databaseReference.child("Mike Raymond").set({
    //   'major': "Computer Science",
    //   'email': "mraymond2@pride.hofstra.edu",
    //   'birthday': "December 1, 2000"
    // });
  }
}
