import 'package:flutter/material.dart';

List<String> items = [
  'Sunway',
  'Global',
  'uniglobe',
  'softwarica',
  'LBEf',
];

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("List View widget"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.brown,
                      child: Text(
                        items[index].substring(0, 1),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(items[index]),
                    subtitle: const Text("IT College"),
                    trailing: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  const Divider()
                ],
              );
            }));
  }
}
