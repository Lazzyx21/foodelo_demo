
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:foodelo_demo/widgets/clipper.dart'; // your custom wave clipper

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const Login(), // goes to your login.dart file
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        255,
        255,
        255,
      ), // light background
      body: Stack(
        children: [
          // Background image with wave
          ClipPath(
            clipper: WaveClipper(),
            child: SizedBox(
              height: 580,
              width: double.infinity,
              child: Image.asset('assets/images/t10.jpeg', fit: BoxFit.cover),
            ),
          ),

          // Foreground content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 540),
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Welcome to Foodelo – \nyour one-stop app for delicious food, delivered fresh to your doorstep!",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(18),
                      backgroundColor: const Color(0xFFBF90E7),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
