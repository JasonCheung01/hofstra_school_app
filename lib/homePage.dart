import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'authentications.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final String _username = "";

  void get_username() {
    final _username = auth.currentUser!.displayName;
    print(_username);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new FlatButton(onPressed: get_username, child: Text("hello")),
      ),
    );
  }
}
