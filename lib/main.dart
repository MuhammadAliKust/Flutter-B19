import 'package:flutter/material.dart';
import 'package:flutter_b19/asset_image.dart';

import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AssetImageDemo(),
    );
  }
}
