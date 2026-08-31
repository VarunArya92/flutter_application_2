import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("hii"));
  }
}
