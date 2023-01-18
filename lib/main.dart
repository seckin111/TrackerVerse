import 'package:bitirme_projesi/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'entry_point.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'TrackerVerse',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogInScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgrounds/splash.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
