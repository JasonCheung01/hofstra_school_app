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
            initialSelectedDate: DateTime.now(),
            monthViewSettings: MonthViewSettings(
              showAgenda: true,
              agendaItemHeight: 70,
            ),
            // dataSource: MeetingDataSource(),
          ),
        ),
      ),
    );
  }
}

// class MeetingDataSource extends CalendarDataSource {
//   MeetingDataSource(List<Meeting> source){
//     appointments = source;
//   }

//   @override
//   DateTime getStartTime(int index) {
//     return appointments![index].from;
//   }

//   @override
//   DateTime getEndTime(int index) {
//     return appointments![index].to;
//   }

//   @override
//   bool isAllDay(int index) {
//     return appointments![index].isAllDay;
//   }

//   @override
//   String getSubject(int index) {
//     return appointments![index].eventName;
//   }

//   @override
//   String getStartTimeZone(int index) {
//     return appointments![index].startTimeZone;
//   }

//   @override
//   String getEndTimeZone(int index) {
//     return appointments![index].endTimeZone;
//   }

//   @override
//   Color getColor(int index) {
//     return appointments![index].background;
//   }
// } 

// // This is temporary
// // This creates a meeting for us automatically with these requirements
// _AppointmentDataSource _getCalendarDataSource() {
//   List<Appointment> appointments = <Appointment>[];
//   appointments.add(Appointment(
//     startTime: DateTime.now(),
//     endTime: DateTime.now().add(Duration(minutes: 10)),
//     subject: 'Meeting',
//     color: Colors.blue,
//     startTimeZone: '',
//     endTimeZone: '',
//   ));

//   return _AppointmentDataSource(appointments);
// }

// class _AppointmentDataSource extends CalendarDataSource {
//   _AppointmentDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }
