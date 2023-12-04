import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text("Column Widget")),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 60,
          width: 100,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green),
          child: const Center(
              child: Text(
            "React.js",
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
        Container(
          height: 60,
          width: 100,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green),
          child: const Center(
              child: Text(
            "Flutter",
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
        Container(
          height: 60,
          width: 100,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green),
          child: const Center(
              child: Text(
            "My Sql",
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ]),
    );
  }
}
