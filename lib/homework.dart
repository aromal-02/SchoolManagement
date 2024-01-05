import 'package:flutter/material.dart';

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomeWorks",
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 206, 175, 239),
      ),
      body: const Center(
          child: Text("Works loading.......",
              style: TextStyle(
                fontSize: 25,
              ))),
    );
  }
}
