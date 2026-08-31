import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Full Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your Full Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 10),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "E-mail",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your E-mail',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 10),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Enter Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 10),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),

                onPressed: () {},
                child: Text("signup", style: TextStyle(color: Colors.amber)),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
