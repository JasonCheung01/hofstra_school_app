import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('This is the profile page'),
      ),
    );
  }
}
