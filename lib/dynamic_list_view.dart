import 'package:flutter/material.dart';
import 'package:flutter_b19/models/notification_model.dart';

class DynamicListView extends StatefulWidget {
  DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  int selectedIndex = -1;

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        subTitle: 'First Sub Title',
        time: '12:20 PM'),
    NotificationModel(
        title: 'Second Notification',
        subTitle: 'Second Sub Title',
        time: '1:20 PM'),
    NotificationModel(
        title: 'Third Notification',
        subTitle: 'Third Sub Title',
        time: '2:20 PM'),
    NotificationModel(
        title: 'Fourth Notification',
        subTitle: 'Fourth Sub Title',
        time: '2:20 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 20,
              color: selectedIndex == i ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(notificationList[i].title),
                  subtitle: Text(notificationList[i].subTitle),
                  trailing: Text(notificationList[i].time),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}
