import 'package:flutter/material.dart';

import 'splashscreen.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreenview(),
      debugShowCheckedModeBanner: false,
    );
  }
}
