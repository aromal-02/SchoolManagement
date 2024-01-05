import 'package:flutter/material.dart';

class Payfee extends StatelessWidget {
  const Payfee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fee",
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 206, 175, 239),
      ),
      body: const Center(
          child: Text("payments loading.......",
              style: TextStyle(
                fontSize: 25,
              ))),
    );
  }
}
