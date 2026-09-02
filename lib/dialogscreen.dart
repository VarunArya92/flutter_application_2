import 'package:flutter/material.dart';

class dialogscreens extends StatefulWidget {
  const new({super.key});

  @override
  State<dialogscreens> createState() => _dialogscreensState();
}

class _dialogscreensState extends State<dialogscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog"), backgroundColor: Colors.green),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            customdialog(context);
          },
          child: Text("press Me"),
        ),
      ),
    );
  }

  void customdialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("4001"),
          actions: [
            TextButton(onPressed: () {}, child: Text("yes")),
            TextButton(onPressed: () {}, child: Text("No")),
          ],
        );
      },
    );
  }
}
