import 'package:flutter/material.dart';
import 'package:flutter_b19/providers/user.dart';
import 'package:flutter_b19/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userProvider.setName('ALi');
              userProvider.setEmail('ali@gmail.com');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScreenB()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
