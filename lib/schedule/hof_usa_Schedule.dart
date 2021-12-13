import 'package:flutter/material.dart';

class hof_usa_Schedule extends StatefulWidget {
  @override
  State<hof_usa_Schedule> createState() => _HofUSAScheduleState();
}

class _HofUSAScheduleState extends State<hof_usa_Schedule> {
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
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am',
    '5:00 pm - 2:00 am'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('HofUSA Schedule',
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
