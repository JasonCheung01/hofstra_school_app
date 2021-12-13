import 'package:flutter/material.dart';

class dunkinDonutSchedule extends StatefulWidget {
  @override
  State<dunkinDonutSchedule> createState() => _DunkinDonutScheduleState();
}

class _DunkinDonutScheduleState extends State<dunkinDonutSchedule> {
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
    '7:30 am - 6:00 pm',
    '7:30 am - 6:00 pm',
    '7:30 am - 6:00 pm',
    '7:30 am - 6:00 pm',
    '7:30 am - 5:00 pm',
    'Closed - Closed',
    'Closed - Closed'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('Dunkin Donut Schedule',
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
