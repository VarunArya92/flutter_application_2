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
    return ListView.builder(
      itemCount: countindex.length,
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          height: 200,
          color: Colors.amber.shade200,
          child: Text("User Name = ${countindex[index]}"),
        );
      },
    );

    // return Scaffold(
    //   appBar: AppBar(title: Text("List view"), backgroundColor: Colors.amber),
    //   body: ListView.builder(
    //     itemCount: countindex.length,

    //     itemBuilder: (context, index) {
    //       return Scaffold(
    //         body: Column(
    //           children: [
    //             Container(
    //               height: 200,
    //               width: 100,
    //               color: Colors.black,
    //               child: Row(
    //                 children: [
    //                   Icon(Icons.person),
    //                   Text("User name = ${countindex[index]}"),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
