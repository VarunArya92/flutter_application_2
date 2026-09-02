import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/output.dart';
import 'package:flutter_application_2/profilescreen.dart';

import 'loginscreen.dart';

class bottomnavscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<bottomnavscreen> createState() => _bottomnavscreenState();
}

class _bottomnavscreenState extends State<bottomnavscreen> {
  var indexList = [loginscreen(), Profilescreen(), Homescreen()];
  var index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indexvalue(index);
  }

  void indexvalue(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bootom bar")),
      body: indexList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        onTap: indexvalue,
      ),
    );
  }
}
