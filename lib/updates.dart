import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("School Updates"),
        backgroundColor: const Color.fromARGB(255, 206, 175, 239),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 70,
            color: Colors.white,
            child: const ListTile(
              leading: Icon(Icons.newspaper),
              title: Text(
                "News",
                style: TextStyle(fontSize: 35),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 70,
            color: Colors.white,
            child: const ListTile(
              leading: Icon(Icons.event_available),
              title: Text(
                "Events",
                style: TextStyle(fontSize: 35),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 70,
            color: Colors.white,
            child: const ListTile(
              leading: Icon(Icons.announcement_outlined),
              title: Text(
                "Annoncements",
                style: TextStyle(fontSize: 35),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 70,
            color: Colors.white,
            child: const ListTile(
              leading: Icon(Icons.leave_bags_at_home_outlined),
              title: Text(
                "Holidays",
                style: TextStyle(fontSize: 35),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 70,
            color: Colors.white,
            child: const ListTile(
              leading: Icon(Icons.calendar_view_week_outlined),
              title: Text(
                "Functions",
                style: TextStyle(fontSize: 35),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          )
        ],
      ),
    );
  }
}
