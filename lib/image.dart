import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Image Widget Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/premium-photo/detailed-intricately-carved-buddha-statue-illuminated-by-single-ray-light_670421-5953.jpg'),
          ),
          const CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/premium-photo/detailed-intricately-carved-buddha-statue-illuminated-by-single-ray-light_670421-5953.jpg'),
          ),
        ],
      ),
    );
  }
}
