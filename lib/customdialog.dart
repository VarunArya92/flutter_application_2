import 'package:flutter/material.dart';

class Customdialogscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Customdialogscreen> createState() => _CustomdialogscreenState();
}

class _CustomdialogscreenState extends State<Customdialogscreen> {
  @override
  void customdialogalert(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 200,
            width: 100,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Error",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Ok")),
                    TextButton(
                      onPressed: () {},
                      child: Text("Go back to Login Screen"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            customdialogalert(context);
          },
          child: Text("Press Me"),
        ),
      ),
    );
  }
}
