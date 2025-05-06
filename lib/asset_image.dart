import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'First Screen',
          style: TextStyle(
              color: Colors.blue, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.blue,
        ),
        actions: [
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.blue,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.blue,
          ),
        ],
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        children: [
          Text(
            'First Text',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            'Second Text',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
