import 'package:flutter/material.dart';
import 'package:flutter_b19/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0,
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(
            userProvider.getName().toString(),
            style: TextStyle(fontSize: 50),
          ),
 Text(
            userProvider.getEmail().toString(),
            style: TextStyle(fontSize: 50),
          ),

          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back to Screen A")),
          ),
        ],
      ),
    );
  }
}
