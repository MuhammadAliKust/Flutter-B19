import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Card(
              elevation: 20,
              color: selectedIndex.contains(i)
                  ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  onTap: (){
                    if(selectedIndex.contains(i)){
                      selectedIndex.remove(i);
                    }else{

                      selectedIndex.add(i);
                    }


                    setState(() {

                    });
                  },
                  leading: Icon(Icons.notifications),
                  title: Text("Selected Index: $selectedIndex"),
                  subtitle: Text("Loop Index: $i"),
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
