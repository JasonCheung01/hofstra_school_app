import 'package:flutter/material.dart';

class bit_and_byte_Schedule extends StatefulWidget {
  @override
  State<bit_and_byte_Schedule> createState() => _bit_and_byte_ScheduleState();
}

class _bit_and_byte_ScheduleState extends State<bit_and_byte_Schedule> {
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
    '7:30 am - 3:00 pm',
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
        title: Text('Bits and Byte Schedule',
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
