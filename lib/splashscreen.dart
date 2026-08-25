import 'dart:async';

import 'package:flutter/material.dart';

import 'loginscreen.dart';

class splashscreenview extends StatefulWidget {
  const new({super.key});

  @override
  State<splashscreenview> createState() => _splashscreenviewState();
}

class _splashscreenviewState extends State<splashscreenview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "FLUTTER APP",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
