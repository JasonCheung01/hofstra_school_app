import 'package:flutter/material.dart';

class dinerPage extends StatefulWidget {
  @override
  State<dinerPage> createState() => _DinerPageState();
}

class _DinerPageState extends State<dinerPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('This is the Diner page'),
      ),
    );
  }
}
