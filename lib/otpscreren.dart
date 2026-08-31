import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginscreen.dart';

class otpscreens extends StatefulWidget {
  const new({super.key});

  @override
  State<otpscreens> createState() => _otpscreensState();
}

class _otpscreensState extends State<otpscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Please Enter Your Verification Code",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber.shade100,
                      child: TextField(textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber.shade100,
                      child: TextField(textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber.shade100,
                      child: TextField(textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber.shade100,
                      child: TextField(textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => loginscreen()),
                  );
                },
                child: Text(
                  'Submited',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
