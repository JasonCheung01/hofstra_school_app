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
