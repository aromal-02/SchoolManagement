import 'package:flutter/material.dart';
import 'package:study/bottom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
   
    Future.delayed(const Duration(seconds: 3), () {
      
      Navigator.pushReplacement(
          context, (MaterialPageRoute(builder: (context) => const Bottomnavigator())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("assets/images.png"),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Educating for Complexity",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Instant,Accurante Communication between school management,staff,parents and students with the Student Alert portal and app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
