 import 'package:bitirme_projesi/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(
    
  )));

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
    Future.delayed(const Duration(seconds:2),
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
    }
    
    );
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/splash.png"),
          fit:BoxFit.cover
          )
        ),
      )
    );
  }
}