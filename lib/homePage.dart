// ignore_for_file: deprecated_member_use, unnecessary_this, file_names, unnecessary_new

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'authentications.dart';
import 'server/server_object.dart';
import 'server/server_function.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final firestoreInstance = FirebaseFirestore.instance;
  String _class1 = "";
  String _class2 = "";
  String _class3 = "";
  String _class4 = "";
  String _class5 = "";
  // Map<String, dynamic> lists = [] as Map<String, dynamic>;

  var test = new Users(
      birthday: 'October 21, 2001',
      schedule: [
        "CSC 120: Algorithm & Data Structure",
        "CSC 161: Intro Automata Theory",
        "CSC 184: Mobile Device Programming",
        "CSC 289: Advance Software Engineering",
        "ENGL 181: Graphic Novel Literature"
      ],
      email: 'jcheung1@pride.hofstra.edu',
      major: 'Computer Science',
      name: 'Jason Cheung');

  _getUserAuth() {
    var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
    firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
      if (mounted) {
        setState(() {
          _class1 = value.data()!["class_schedule"]["class1"];
          _class2 = value.data()!["class_schedule"]["class2"];
          _class3 = value.data()!["class_schedule"]["class3"];
          _class4 = value.data()!["class_schedule"]["class4"];
          _class5 = value.data()!["class_schedule"]["class5"];
          // lists = value.data()!["class_schedule"];
          // print(this.lists);
        });
      }
    });
  }

  // final databaseReference = FirebaseDatabase.instance
  //     .reference()
  //     .child("hofstra-school-app-default-rtdb");
  // final String _username = "";
  // List<Map<dynamic, dynamic>> lists = [];

  // void get_username() {
  // final _username = auth.currentUser!.displayName;
  // print(_username);
  // }

  // void _onPressed() {
  //   var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
  //   firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
  //     // print(value.data()!["name"]);
  //     print(value.data()!);
  //   });
  // }

  // void _onPressed(data) {
  //   var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
  //   firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
  //     print(value.data()!["$data"]);
  //   });
  // }

  // Future getPosts() async {
  //   var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
  //   var firestore = FirebaseFirestore.instance;
  //   QuerySnapshot qn = await firestore.collection("users").get();

  //   return qn.docs;
  // }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: List.generate(lists.length, (index) {
    //     return Container(
    //       padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
    //       child: Text(lists["class1"].toString()),
    //     );
    //   }),
    // );
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(),
                    const SizedBox(height: 12.0),
                    // new TextButton(
                    //     onPressed: () => updateUser(test),
                    //     child: const Text("Hi")),
                    const Text("My Student Schedule",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.class_),
                              onTap: _getUserAuth(),
                              title: Text(_class1),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.class_),
                              onTap: _getUserAuth(),
                              title: Text(_class2),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.class_),
                              onTap: _getUserAuth(),
                              title: Text(_class3),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.class_),
                              onTap: _getUserAuth(),
                              title: Text(_class4),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // dense: true,
                              horizontalTitleGap: 0.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.class_),
                              onTap: _getUserAuth(),
                              title: Text(_class5),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // dense: true,
                              horizontalTitleGap: 0.0,
                            )
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ))),
    );
    // Center(
    //   child: new FlatButton(
    //     child: new Text(_class1, style: TextStyle(color: Colors.black)),
    //     onPressed: _getUserAuth(),
    //     //_getUserAuth,
    //   ),
    // );
    // return Container(
    //   child: FutureBuilder(
    //       future: getPosts(),
    //       builder: (_, snapshot) {
    //         if (snapshot.connectionState == ConnectionState.waiting) {
    //           return Center(
    //             child: Text("Loading..."),
    //           );
    //         } else{
    //           return ListView.builder(
    //             itemCount: snapshot.data.length,
    //             itemBuilder: (_, index){
    //               return ListTile(
    //                 title: Text(snapshot.data![index].data["name"]),
    //               )
    //             }
    //             )
    //         }
    //       }),
    // );
  }
  // return Center(
  //     child: new FlatButton(
  //   child: new Text("hello"),
  //   onPressed: _onPressed,
  // )

  // body: FutureBuilder(
  //     future: databaseReference.once(),
  //     builder: (context, AsyncSnapshot snapshot) {
  //       if (snapshot.hasData) {
  //         lists.clear();
  //         Map<dynamic, dynamic> values = snapshot.data!.value;
  //         values.forEach((key, values) {
  //           lists.add(values);
  //         });
  //         return new ListView.builder(
  //             shrinkWrap: true,
  //             itemCount: lists.length,
  //             itemBuilder: (BuildContext context, int index) {
  //               return Card(
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Text("Birthday: " + lists[index]["birthday"]),
  //                     Text("Email: " + lists[index]["email"]),
  //                     Text("Major: " + lists[index]["major"]),
  //                   ],
  //                 ),
  //               );
  //             });
  //       }
  //       return CircularProgressIndicator();
  // }));
  // );
}
