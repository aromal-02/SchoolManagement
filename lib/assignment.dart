import 'package:flutter/material.dart';
import 'package:study/assignlist.dart';
import 'package:study/calender.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 236, 236),
        appBar: AppBar(
          title: const Text('Assignments'),
          backgroundColor:  Color.fromARGB(255, 206, 175, 239),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 350,
              color: const Color.fromARGB(255, 248, 248, 248),
              child: const Calender(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Assignment(10)", style: TextStyle(fontSize: 25)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyListView()));
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color.fromARGB(255, 242, 245, 242))),
                      child: const Text("see all"))
                ],
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
          ]),
        ));
  }
}
