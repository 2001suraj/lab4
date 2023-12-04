import 'package:flutter/material.dart';
import 'package:lab4/button_widget.dart';
import 'package:lab4/column.dart';
import 'package:lab4/continer.dart';
import 'package:lab4/image.dart';
import 'package:lab4/listview.dart';
import 'package:lab4/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(children: [
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageWidget()));
          },
          child: const Text("Image Widget"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ButtonWidget()));
          },
          child: const Text("Button Widget"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RowWidget()));
          },
          child: const Text("Row Widget"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ColumnWidget()));
          },
          child: const Text("Column Widget"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ContainerWidget()));
          },
          child: const Text("container Widget"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ListviewWidget()));
          },
          child: const Text("ListView Widget"),
        ),
      ]),
    );
  }
}
