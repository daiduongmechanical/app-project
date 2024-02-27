import 'package:final_project/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../data_type/calendar_data.dart';
import '../layout/normal_layout.dart';

class TimeTablePage extends StatefulWidget {
  @override
  State<TimeTablePage> createState() => _TimeTablePage();
}

class _TimeTablePage extends State<TimeTablePage> {
  DateTime today = DateTime.now();
  bool check = false;
  List<CalendarData> data = [
    CalendarData(fieldName: "match", room: "A1.01", Time: "12:00- 2:00"),
    CalendarData(fieldName: "chemistry", room: "A1.01", Time: "12:00- 2:00")
  ];

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
    print(day.day.runtimeType);
    if (day.day == 27) {
      setState(() {
        check = true;
      });
    } else {
      check = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NormalLayout(
        headText: 'Time table',
        child: Column(
          children: [
            Expanded(
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                onDaySelected: _onDaySelected,
                rowHeight: 40,
                selectedDayPredicate: (day) => isSameDay(day, today),
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
              ),
            ),
            Expanded(
                child: check
                    ? Container(
                        child: ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              CalendarData item = data[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(item.fieldName,
                                              textAlign: TextAlign.center),
                                        ),
                                        Expanded(
                                          child: Text(item.Time,
                                              textAlign: TextAlign.center),
                                        ),
                                        Expanded(
                                          child: Text(item.room,
                                              textAlign: TextAlign.center),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    : Center(
                        child: Text("No calendar for today"),
                      ))
          ],
        ));
  }
}
