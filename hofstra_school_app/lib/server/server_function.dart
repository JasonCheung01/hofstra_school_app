import 'dart:async';
import 'dart:convert';
import 'server_object.dart';

import 'package:http/http.dart' as http;

// this function is sending data to a server
Future<http.Response> updateUser(Users user) async {
  /*var classes = {};
  classes['class1'] = 'CSC 120: Algorithm & Data Structure';
  classes['class2'] = 'CSC 161: Intro Automata Theory'; 
  classes['class3'] = 'CSC 184: Mobile Device Programming'; 
  classes['class4'] = 'CSC 289: Advance Software Engineering'; 
  classes['class5'] = 'ENGL 181: Graphic Novel Literature';


  var users = {};
  users['birthday'] = user.birthday; 
  users['class_schedule'] = user.classes;
  users['email'] = user.email; 
  users['major'] = user.major;  
  users['name'] = user.name; 
  */

  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/updateUser'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(user.toJson()),
  );

  if (response.statusCode == 201) {
    return response;
  } else {
    throw Exception('Failed to update current user');
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class Server {
//   dynamic result;
//   String getUserName() {
//     final FirebaseAuth auth = FirebaseAuth.instance;
//     final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
//     var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
//     //var result;

//     firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
//       result = value.data()!["name"];
//       print(result.toString());
//       //result.toString(value);
//     });
//     print(result.toString());
//     return result.toString();
//   }

// String _getEmail() {
//   var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
//   firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
//     var _email = value.data()!["email"];
//   });
//   return _email;
// }

// String _getBirthday() {
//   var firebaseUser = FirebaseAuth.instance.currentUser!.uid;
//   firestoreInstance.collection("users").doc(firebaseUser).get().then((value) {
//     var _birthday = value.data()!["birthday"];
//   });
//   return _birthday;
// }
//}
