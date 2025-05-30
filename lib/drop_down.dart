import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  DropDownDemo({super.key});

  @override
  State<DropDownDemo> createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  List<String> languageList = ['English', 'Urdu', 'Pashto'];

  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: DropdownButton(
              items: languageList
                  .map((e) => DropdownMenuItem(
                        child: Text(e.toString()),
                        value: e,
                      ))
                  .toList(),

              value: selectedLanguage,
              hint: Text("Select Language"),
              isExpanded: true,
              onChanged: (val) {
                selectedLanguage = val;
                setState(() {});
              }),
        ),
      ),
    );
  }
}
