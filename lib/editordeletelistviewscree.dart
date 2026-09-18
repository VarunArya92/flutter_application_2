import 'package:flutter/material.dart';

class editordeletelistviewscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<editordeletelistviewscreen> createState() =>
      _editordeletelistviewscreenState();
}

class _editordeletelistviewscreenState
    extends State<editordeletelistviewscreen> {
  List checkdata = [];
  TextEditingController Addusername = TextEditingController();

  // String Textofaddusername=Addusername.toString();
  void showfloatactionbuttondialog(context, int index) {
    // TextEditingController Addusername = TextEditingController();
    // String Textofaddusername=Addusername.toString();

    showDialog(
      context: context,
      builder: (context) {
        if (index > -1) {
          Addusername.text = checkdata[index].toString();
        } else {
          Addusername.clear();
        }
        return Dialog(
          backgroundColor: Colors.indigo.shade100,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  index > -1 ? "Update Username" : "Add Username",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: Addusername,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      hintText: "Enter user name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    if (Addusername.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        (SnackBar(
                          backgroundColor: Colors.indigo.shade100,
                          content: Text(
                            "Enter User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        )),
                      );
                    } else {
                      if (index > -1) {
                        setState(() {
                          checkdata[index] = Addusername.text.toString();
                          Addusername.clear();
                          Navigator.pop(context);
                        });
                      } else {
                        setState(() {
                          checkdata.add(Addusername.text);
                          Addusername.clear();
                          Navigator.pop(context);
                        });
                      }
                    }
                    // checkdata = Addusername.toString();
                  },
                  child: Text(
                    "Submited",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          "Edit or Delete List view",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: checkdata.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.indigo.shade100,
            shadowColor: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.person_2_outlined),
                      SizedBox(width: 30),
                      Text(
                        // "${checkdata[index]}",
                        // "${Addusername}",
                        "${checkdata[index].toString()}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          showfloatactionbuttondialog(context, index);
                          // checkdata[index] = Addusername.text.toString();
                        },
                        icon: Icon(Icons.edit),
                      ),
                      SizedBox(width: 30),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            checkdata.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showfloatactionbuttondialog(context, -1);
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
