import 'package:flutter/material.dart';
import 'package:flutter_application_2/classdata.dart';

class Classtaskwithlistviewscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Classtaskwithlistviewscreen> createState() =>
      _ClasstaskwithlistviewscreenState();
}

class _ClasstaskwithlistviewscreenState
    extends State<Classtaskwithlistviewscreen> {
  List<studentsdata> studentlist = [];
  TextEditingController Namescontroler = TextEditingController();
  TextEditingController emailscontroller = TextEditingController();
  TextEditingController rollnoscontroller = TextEditingController();

  void showdialogfunction() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "------ Enter Student Data ------",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: Namescontroler,
                  decoration: InputDecoration(
                    hintText: "Enter Student Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: emailscontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Student E-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: rollnoscontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Student Roll no",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    if (Namescontroler.text.isEmpty &&
                        emailscontroller.text.isEmpty &&
                        rollnoscontroller.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.black,
                          content: Text(
                            "Please Enter the Details",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    } else {
                      // studentsdata std = studentsdata(name,email,rollno);
                      setState(() {
                        studentsdata std = studentsdata(
                          Namescontroler.text.toString(),
                          emailscontroller.text.toString(),
                          int.parse(rollnoscontroller.text.toString()),
                        );
                        std.name = Namescontroler.text.toString();
                        std.email = emailscontroller.text.toString();
                        std.rollno = int.parse(
                          rollnoscontroller.text.toString(),
                        );

                        studentlist.add(std);
                        Navigator.pop(context);
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_circle_left, color: Colors.white),
                      Text(" Submited ", style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_circle_right, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "List View Data Add In Class",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: studentlist.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6.0,
            shadowColor: Colors.black45,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            margin: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name = ",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("${studentlist[index].name}"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "E-mail = ",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("${studentlist[index].email}"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Roll no = ",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("${studentlist[index].rollno}"),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        studentlist.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          showdialogfunction();
        },
        child: Icon(Icons.add, color: Colors.white),
        shape: CircleBorder(),
      ),
    );
  }
}
