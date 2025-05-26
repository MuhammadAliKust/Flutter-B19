import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker Demo"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          firstDate: DateTime(1970),
                          lastDate: DateTime.now())
                      .then((selectedDate) {
                    dateTime = selectedDate;
                    setState(() {});
                  });
                },
                child: Text("Show Date Picker")),
          ),
          Text(DateFormat.yMMMEd().format(dateTime!))
        ],
      ),
    );
  }
}
