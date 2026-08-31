import 'package:flutter/material.dart';
import 'package:flutter_application_2/Signup.dart';
import 'package:flutter_application_2/forgetscreen.dart';
import 'package:flutter_application_2/output.dart';
import 'package:flutter_application_2/splashscreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController userPasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          " Welcome to login Screen",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // name Textfiled
            Text("E-mail", style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: TextField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                  focusColor: Colors.black,

                  labelText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: TextField(
                onChanged: (value) {
                  print("Check Upated Vallue: $value");
                  if (value.length < 8) {
                    decoration:
                    InputDecoration(
                      labelText: 'Enter your Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    );
                  }
                },
                controller: userPasswordcontroller,
                obscureText: true,

                decoration: InputDecoration(
                  labelText: 'Enter your Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => forgetpasswordscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () {
                String textofname = usernamecontroller.text;
                String textofpassword = userPasswordcontroller.text;
                if (textofname.isEmpty && textofpassword.isEmpty) {
                  // Fluttertoast.showToast(
                  //   msg: 'Please Fill Login Details',
                  //   toastLength: Toast.LENGTH_LONG,
                  //   backgroundColor: Colors.amber,
                  //   textColor: Colors.black,
                  //   gravity: ToastGravity.CENTER,
                  //   timeInSecForIosWeb: 2,
                  // );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Outputscreen(
                        name: textofname,
                        password: textofpassword,
                      ),
                    ),
                  );
                }
              },

              child: Container(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have a Account",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signupscreen()),
                      );
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(items: ),
    );
  }
}
