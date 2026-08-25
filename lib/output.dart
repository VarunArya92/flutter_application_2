import 'package:flutter/material.dart';

class Outputscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Outputscreen> createState() => _OutputscreenState();
}

class _OutputscreenState extends State<Outputscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(children: [Text("Your Email Id =>")]),
            ],
          ),
        ),
      ),
    );
  }
}
