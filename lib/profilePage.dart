import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("lib/img/test.jpg"),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 300,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.portrait),
                            title: Text('Name: Jason Cheung',
                                style: TextStyle(
                                  fontSize: 13.0,
                                )),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 0.0),
                            dense: true,
                            horizontalTitleGap: 0.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.school),
                            title: Text('Major: Computer Science',
                                style: TextStyle(
                                  fontSize: 13.0,
                                )),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 0.0),
                            dense: true,
                            horizontalTitleGap: 0.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.mail),
                            title: Text('Email: jcheung1@pride.hofstra.edu',
                                style: TextStyle(
                                  fontSize: 13.0,
                                )),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 0.0),
                            dense: true,
                            horizontalTitleGap: 0.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.cake),
                            title: Text('Birthday: October 21, 2001',
                                style: TextStyle(
                                  fontSize: 13.0,
                                )),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 0.0),
                            dense: true,
                            horizontalTitleGap: 0.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
} 

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
