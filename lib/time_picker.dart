import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay? timeOfDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer Picker Demo"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: TimeOfDay.now())
                      .then((selectedTime) {
                    timeOfDay = selectedTime;
                    setState(() {});
                  });
                },
                child: Text("Show Time Picker")),
          ),
          if (timeOfDay != null) Text(timeOfDay!.format(context).toString())
        ],
      ),
    );
  }
}
