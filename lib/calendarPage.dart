import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendarPage extends StatefulWidget {
  @override
  State<calendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<calendarPage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SfCalendar(
            view: CalendarView.month,
            monthViewSettings: MonthViewSettings(
              showAgenda: true,
              agendaItemHeight: 70,
            ),
          ),
        ),
      ),
    );
  }
}
