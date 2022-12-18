import 'package:bitirme_projesi/reusable_widgets/reusable_widget.dart';
import 'package:bitirme_projesi/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_projesi/utils/colors_utils.dart';

import 'home_screen.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ?", style: TextStyle(color: Colors.white70),),
        GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
          },
        child:const Text(" Sign Up",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold ),)),

      ],
    );  
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors:
      [
      hexStringToColor("011926"),
      hexStringToColor("003E5C"),
      ],
      begin: Alignment.topCenter,end:Alignment.bottomCenter),),
      child: SingleChildScrollView(child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0,20 ,0),
            child: Column(  
              children: <Widget>[   
                logoWidget("assets/logo3.png"),
                SizedBox(height: 30,),
                reusableTextField("Enter Username", Icons.person_outline, true, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField("Enter Password", Icons.lock_outline, false, _passwordTextController),
                SizedBox(height: 20,),
                logInSignUpButton(context, true, (){
                  Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> HomeScreen()));
                }),
                
                signUpOption()
              ], 
            ),
          ),
        ),
      ),
    );
  }
}