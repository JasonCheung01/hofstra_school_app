import 'package:flutter/material.dart';

class studentCenterSchedule extends StatefulWidget {
  @override
  State<studentCenterSchedule> createState() => _StudentCenterScheduleState();
}

class _StudentCenterScheduleState extends State<studentCenterSchedule> {
  final List<String> weeks = <String>[
    'Mon',
    'Tue',
    'Wed',
    'Thur',
    'Fri',
    'Sat',
    'Sun'
  ];
  final List<String> time = <String>[
    '7:30 am - 9:00 pm',
    '7:30 am - 9:00 pm',
    '7:30 am - 9:00 pm',
    '7:30 am - 9:00 pm',
    '7:30 am - 9:00 pm',
    '9:00 am - 8:00 pm',
    '10:00 am - 8:00 pm'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('Student Center Schedule',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
            )),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/img/swamp_wallpaper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
              padding: const EdgeInsets.all(100.0),
              itemCount: weeks.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Center(child: Text('${weeks[index]}  ${time[index]}')),
                );
              })),
    );
  }
}


//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: CloseButton(
//             color: Colors.black,
//           ),
//           backgroundColor: Colors.white,
//           title: Text('Student Center Schedule',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 17.0,
//               )),
//         ),
//         body: ListView.builder(
//             padding: const EdgeInsets.all(50.0),
//             itemCount: weeks.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 child: Center(child: Text('${weeks[index]}  ${time[index]}')),
//               );
//             }));
//   }
// }