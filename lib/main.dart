import 'package:flutter/material.dart';
import 'package:flutter_b19/asset_image.dart';
import 'package:flutter_b19/bottom_bar.dart';
import 'package:flutter_b19/date_picker.dart';
import 'package:flutter_b19/page_view_demo.dart';
import 'package:flutter_b19/providers/user.dart';
import 'package:flutter_b19/screen_a.dart';
import 'package:flutter_b19/tabbar.dart';
import 'package:flutter_b19/time_picker.dart';
import 'package:provider/provider.dart';

import 'bottom_sheet.dart';
import 'dialog_box.dart';
import 'drop_down.dart';
import 'dynamic_list_view.dart';
import 'grid_view_demo.dart';
import 'list_view_demo.dart';
import 'login.dart';
import 'multiple_selection_demo.dart';
import 'network_image.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropDownDemo(),
    );
  }
}
