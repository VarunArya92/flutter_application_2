import 'package:flutter/material.dart';

class Outputscreen extends StatefulWidget {
  String? name;
  String? password;
  Outputscreen({required this.name, required this.password, super.key});

  @override
  State<Outputscreen> createState() => _OutputscreenState();
}

class _OutputscreenState extends State<Outputscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Email Id => ${widget.name.toString()}"),
            Text("Your Password => ${widget.password.toString()}"),
          ],
        ),
      ),
    );
  }
}
