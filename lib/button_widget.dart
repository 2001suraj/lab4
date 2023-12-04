import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: const Text("Button Widget")),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            print("Elevated Button is pressed");
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            color: Colors.redAccent,
            height: 40,
            child: const Center(
              child: Text(
                "Elevated Button",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("outline Button is pressed");
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent, width: 3)),
            height: 40,
            child: const Center(
              child: Text(
                "outlined Button",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.home,
          size: 50,
          color: Colors.red,
        )
      ]),
    );
  }
}
