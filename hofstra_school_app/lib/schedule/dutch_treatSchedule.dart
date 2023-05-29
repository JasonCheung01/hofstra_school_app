import 'package:flutter/material.dart';

class dutch_treatSchedule extends StatefulWidget {
  @override
  State<dutch_treatSchedule> createState() => _dutchTreatScheduleState();
}

class _dutchTreatScheduleState extends State<dutch_treatSchedule> {
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
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
    '10:00 am - 2:00 am',
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
