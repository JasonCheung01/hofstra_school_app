import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class reminderPage extends StatefulWidget {
  @override
  State<reminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<reminderPage> {
  List<String> _todoItems = [];

  // adds task item to page
  void _addTodoItem(String task) {
    if (task.length > 0) {
      setState(() => _todoItems.add(task));
    }
  }

  // removes our task item from page
  void _removeTodoItem(int index) {
    setState(() => _todoItems.removeAt(index));
  }

  void _promptRemoveTodoItem(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              title: new Text('Mark "${_todoItems[index]}" as finish?'),
              actions: <Widget>[
                new FlatButton(
                    child: new Text('Cancel'),
                    onPressed: () => Navigator.of(context).pop()),
                new FlatButton(
                    child: new Text('Finish'),
                    onPressed: () {
                      _removeTodoItem(index);
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  // builds our list structure for reminder page
  Widget _buildTodoList() {
    return ListView.builder(
      itemCount: _todoItems.length,
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return ListTile(
              title:
                  new Text(_todoItems[index], style: TextStyle(fontSize: 16.0)),
              dense: true,
              onTap: () => _promptRemoveTodoItem(index));
        } else {
          return new Text(' ');
        }
      },
    );
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          onPressed: _addTaskPage,
          backgroundColor: Colors.white,
          child: new Icon(
            Icons.add,
            color: Colors.blue,
          )),
    );
  }

  // creating a new task page
  void _addTaskPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            leading: CloseButton(color: Colors.black),
            title: new Center(
              child: Image.asset("lib/img/hofstra_university_logo.jpg",
                  height: 120.0, width: 170.0),
            ),
            actions: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  DatabaseReference _testRef =
                      FirebaseDatabase.instance.reference().child("test");
                  _testRef.set("Hello world ${Random().nextInt(100)}");
                },
                icon: Icon(Icons.done, color: Colors.black),
                label: Text('Save', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
              ),
            ],
          ),
          body: new TextFormField(
            decoration: new InputDecoration(
                hintText: 'Enter task (click enter afterward before saving)',
                contentPadding: const EdgeInsets.all(20.0)),
            onFieldSubmitted: (val) {
              _addTodoItem(val);
            },
          ));
    }));
  }
}
