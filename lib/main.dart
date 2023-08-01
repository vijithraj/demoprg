import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  DateTime today = DateTime.now();
  void_onDayselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          TableCalendar(
            locale: "en_us",
            rowHeight: 43,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Card(
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: ("Phone bill"),
                            icon: Icon(Icons.bolt_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: ("Rent"),
                            icon: Icon(Icons.bolt_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: ("Student Loan"),
                            icon: Icon(Icons.bolt_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
