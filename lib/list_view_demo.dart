import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return Card(
              elevation: 20,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notification Title"),
                  subtitle: Text("Notification Sub Title"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                  ),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}
