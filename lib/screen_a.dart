import 'package:flutter/material.dart';
import 'package:flutter_b19/screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScreenB(name: 'Ali',email: 'ali@gmail.com',)));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
