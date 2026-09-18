import 'package:flutter/material.dart';

class Listtaskscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Listtaskscreen> createState() => _ListtaskscreenState();
}

class _ListtaskscreenState extends State<Listtaskscreen> {
  List Adddata = [];
  void additems() {
    if (Addcardnumber.text.isNotEmpty) {
      int a = int.parse(Addcardnumber.text.toString());

      setState(() {
        // Adddata.add(a);
        for (int i = 0; i < a; i++) {
          print("working");
          Adddata.add(Adddata.length + 1);
        }

        Navigator.pop(context);
      });
    }
  }

  TextEditingController Addcardnumber = TextEditingController();
  void showdialogfunction() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Add Number",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onSubmitted: (_) => additems(),
                    keyboardType: TextInputType.number,
                    controller: Addcardnumber,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      hintText: "Enter the amnount",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    additems();
                  },
                  child: Text("Add", style: TextStyle(color: Colors.white)),
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
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          "Welcome to add the cards screen",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Enter the amount to add cards",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: Adddata.length,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  Card(
                    child: ListTile(title: Text(Adddata[index].toString())),

                    elevation: 6.0,
                    color: Colors.pinkAccent.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        onPressed: () {
          showdialogfunction();
        },
        backgroundColor: Colors.pink,
        shape: const CircleBorder(),
      ),
    );
  }
}
