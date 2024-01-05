import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 40,
      headerStyle:
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: today,
    );
  }
}
