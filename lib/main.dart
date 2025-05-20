import 'package:flutter/material.dart';
import 'package:flutter_b19/asset_image.dart';
import 'package:flutter_b19/bottom_bar.dart';
import 'package:flutter_b19/page_view_demo.dart';

import 'dynamic_list_view.dart';
import 'grid_view_demo.dart';
import 'list_view_demo.dart';
import 'login.dart';
import 'multiple_selection_demo.dart';
import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarDemo(),
    );
  }
}
