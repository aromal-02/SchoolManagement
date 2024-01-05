import 'package:flutter/material.dart';
import 'package:study/assignment.dart';
import 'package:study/fees.dart';
import 'package:study/home.dart';
import 'package:study/homework.dart';

class Bottomnavigator extends StatefulWidget {
  const Bottomnavigator({super.key});

  @override
  State<Bottomnavigator> createState() => _BottomnavigatorState();
}

class _BottomnavigatorState extends State<Bottomnavigator> {
  int currentselectedindex = 0;
  final screens = [
    const HomeScreen(),
    const Assignment(),
    const Homework(),
    const Payfee()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentselectedindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 67, 163, 3),
          unselectedItemColor: Colors.black,
          currentIndex: currentselectedindex,
          onTap: (newindex) {
            setState(() {
              currentselectedindex = newindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "home",
                backgroundColor: Color.fromARGB(255, 228, 225, 225)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_late,
                ),
                label: "assignment",
                backgroundColor: Color.fromARGB(255, 228, 225, 225)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_work,
                ),
                label: "homework",
                backgroundColor: Color.fromARGB(255, 228, 225, 225)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.payment,
                ),
                label: "pay fee",
                backgroundColor: Color.fromARGB(255, 228, 225, 225))
          ]),
    );
  }
}
