import 'package:flutter/material.dart';
import 'package:flutter_application_2/otpscreren.dart';

class forgetpasswordscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<forgetpasswordscreen> createState() => _forgetpasswordscreenState();
}

class _forgetpasswordscreenState extends State<forgetpasswordscreen> {
  @override
  TextEditingController forgetscreencontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Please enter Your Register E-mail Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: forgetscreencontroller,
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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    String textofemailcontroller = forgetscreencontroller.text;
                    if (textofemailcontroller.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter Your Email")),
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => otpscreens()),
                      );
                    }
                  },
                  child: Text("Verify", style: TextStyle(color: Colors.amber)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
