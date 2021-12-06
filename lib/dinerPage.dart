import 'package:flutter/material.dart';
import 'studentCenterSchedule.dart';
import 'hof_usa_Schedule.dart';
import 'dutch_treatSchedule.dart';

class dinerPage extends StatefulWidget {
  @override
  State<dinerPage> createState() => _DinerPageState();
}

class _DinerPageState extends State<dinerPage> {
  final List<String> places = <String>[
    'Student Center',
    'HofUSA',
    'Dutch Treat'
  ];

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage("lib/img/Hofstra_University_Student_Center.jpg"),
          ),
          title: Text('${places[0]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => studentCenterSchedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/HofUSA.jpg"),
          ),
          title: Text('${places[1]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => hof_usa_Schedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/dutch_treat.jpg"),
          ),
          title: Text('${places[2]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => dutch_treatSchedule())),
        ),
      ],
    );
  }
}
// class _DinerPageState extends State<dinerPage> {
//   final List<String> places = <String>[
//     'Student Center',
//     'HofUSA',
//     'Dutch Treat'
//   ];

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: places.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               height: 50,
//               child: Center(child: Text('${places[index]}')),
//             );
//           }),
//     );
//   }
// }
