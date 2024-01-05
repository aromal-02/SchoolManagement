import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All assignments"),
          backgroundColor: const Color.fromARGB(255, 206, 175, 239),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Theoretical Physics',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'This section includes 6 problem sets and solutions and a list of seminal papers in nuclear and particle physics for paper presentation.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/physics.jpg'),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Mathematics Hometask',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'trigonometry, algebra, calculus, probability related questions',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/maths.png'),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Physical Exercise',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'Exercise helps people lose weight and lower the risk of some diseases. When you exercise daily, you lower the risk of developing some diseases',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 164, 162, 162)),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/physical.jpeg'),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Artificial intelligence',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'This section includes 6 problem sets and solutions and a list of seminal papers in nuclear and particle physics for paper presentation.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/Ai.png'),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Chemistry',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'This section includes 6 problem sets and solutions and a list of seminal papers in nuclear and particle physics for paper presentation.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/Chemistry.png'),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                'Biology',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'This section includes 6 problem sets and solutions and a list of seminal papers in nuclear and particle physics for paper presentation.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/Biology.jpeg'),
              ),
              onTap: () {},
            ),
          ),
        ]));
  }
}
