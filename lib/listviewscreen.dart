import 'package:flutter/material.dart';

class Listviewsceen extends StatefulWidget {
  const new({super.key});

  @override
  State<Listviewsceen> createState() => _ListviewsceenState();
}

class _ListviewsceenState extends State<Listviewsceen> {
  List countindex = ["varun", "tarun", "jack", "rahul"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: countindex.length,
        itemBuilder: (context, index) {
          return Card(
            //  width: double.infinity,
            //color: Colors.amber.shade200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(width: 10),
                  Text(countindex[index].toString()),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addStudentDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addStudentDialog(context) {
    TextEditingController nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Students",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      //   fillColor: Colors.redAccent.shade700,
                      hintText: "Enter Student Full Name",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       filled: true,
                //       fillColor: Colors.redAccent.shade700,
                //       hintText: "Enter Student Password",
                //       hintStyle: TextStyle(color: Colors.black),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Colors.red, width: 2.0),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      if (nameController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Enter Your Name"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                      } else {
                        setState(() {
                          countindex.add(nameController.text);
                        });
                      }
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
