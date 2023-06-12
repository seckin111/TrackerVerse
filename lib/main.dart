import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'database/users.dart';
import 'screens/authentication_screens/login_screen.dart';

late Box boxUser;
Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  boxUser = await Hive.openBox<User>('userBox');
  runApp(
    const MaterialApp(
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
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LogInScreen(),
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
              image: AssetImage("assets/backgrounds/splash_screen.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
