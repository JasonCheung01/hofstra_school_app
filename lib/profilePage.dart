import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("lib/img/test.jpg"),
          ),
          // Creates space between pfp pic and description
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Name: Jason Cheung",
                        style: TextStyle(
                          fontSize: 14.0,
                        )),
                    Text("Major: Computer Science",
                        style: TextStyle(
                          fontSize: 14.0,
                        )),
                    Text("Email: jcheung1@pride.hofstra.edu",
                        style: TextStyle(
                          fontSize: 14.0,
                        )),
                    Text("Birthday: October 21, 2001",
                        style: TextStyle(
                          fontSize: 14.0,
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
// class _ProfilePageState extends State<profilePage> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: new Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage("lib/img/test.jpg"),
//             ),
//             SizedBox(height: 14.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                     child: Column(
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
//                 ))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
