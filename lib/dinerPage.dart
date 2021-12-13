import 'package:flutter/material.dart';
import 'schedule/abp_schedule.dart';
import 'schedule/bits_and_byteSchedule.dart';
import 'schedule/dunkin_donutSchedule.dart';
import 'schedule/dutch_treatSchedule.dart';
import 'schedule/hof_usa_Schedule.dart';
import 'schedule/starbuck_schedule.dart';
import 'schedule/studentCenterSchedule.dart';

class dinerPage extends StatefulWidget {
  @override
  State<dinerPage> createState() => _DinerPageState();
}

class _DinerPageState extends State<dinerPage> {
  final List<String> places = <String>[
    'Au Bon Pain',
    'Bits and Byte',
    'Dunkin Donut',
    'Dutch Treat',
    'HofUSA',
    'Starbuck',
    'Student Center',
  ];

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/abp_logo.jpg"),
          ),
          title: Text('${places[0]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => abpSchedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/bits_and_bytes.jpg"),
          ),
          title: Text('${places[1]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => bit_and_byte_Schedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/DD_logo.png"),
          ),
          title: Text('${places[2]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => dunkinDonutSchedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/dutch_treat.jpg"),
          ),
          title: Text('${places[3]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => dutch_treatSchedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/HofUSA.jpg"),
          ),
          title: Text('${places[4]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => hof_usa_Schedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("lib/img/starbuck_logo.png"),
          ),
          title: Text('${places[5]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => starbuckSchedule())),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage("lib/img/Hofstra_University_Student_Center.jpg"),
          ),
          title: Text('${places[6]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => studentCenterSchedule())),
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
