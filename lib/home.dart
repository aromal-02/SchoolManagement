import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:study/barchart.dart';
import 'package:study/dropdown.dart';
import 'package:study/updates.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 234, 234),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 175, 239),
        title: const Text(
          "Home",
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          Stack(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/user.jpeg"),
              ),
              Positioned(
                right: 3,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 106, 220, 19),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35,
            child: const Text(
              "Hello Maqsud!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            children: [
              Container(
                  width: 200,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Attentance",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Center(
                          child: CircularPercentIndicator(
                            radius: 50,
                            lineWidth: 6,
                            percent: 0.8,
                            progressColor: Colors.greenAccent,
                            center: const Text(
                              "80%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_circle_right),
                            label: const Text("view"))
                      ],
                    ),
                  )),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                  width: 200,
                  height: 230,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Fees",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 1, 1),
                              fontSize: 20),
                        ),
                        Center(
                          child: CircularPercentIndicator(
                            radius: 50,
                            lineWidth: 6,
                            percent: 0.6,
                            progressColor: Colors.yellow,
                            center: const Text(
                              "60%",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 8, 3, 3),
                                  fontSize: 25),
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Colors.black,
                            ),
                            child: const Text(
                              "view",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Homework",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      Dropdownbutton(),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    child: const Barchartgraph(),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            width: 200,
            height: 220,
            color: const Color.fromARGB(255, 240, 238, 238),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "School Updates",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Updates()));
                        },
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 249, 247, 247)),
                        ),
                        child: const Text(
                          "see all",
                          style:
                              TextStyle(color: Color.fromARGB(255, 67, 66, 66)),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 251, 250, 250),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.newspaper,
                              size: 45,
                              color: Color.fromARGB(255, 81, 173, 58),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "News",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 252, 250, 250),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.event,
                              size: 45,
                              color: Color.fromARGB(255, 133, 77, 201),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Events",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 251, 249, 249),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.announcement,
                              size: 45,
                              color: Color.fromARGB(255, 46, 73, 228),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bulletin",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
