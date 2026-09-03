import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottomnav.dart';
import 'package:flutter_application_2/Signup.dart';
import 'package:flutter_application_2/customdialog.dart';
import 'package:flutter_application_2/dialogform.dart';
import 'package:flutter_application_2/dialogscreen.dart';
import 'package:flutter_application_2/forgetscreen.dart';
import 'package:flutter_application_2/otpscreren.dart';

import 'splashscreen.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: forgetpasswordscreen(),
      // home: loginscreen(),
      // home: forgetpasswordscreen(),/////
      // home: bottomnavscreen(),
      // home: dialogscreens(),
      // home: Customdialogscreen(),
      home: Dialogformscreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}
