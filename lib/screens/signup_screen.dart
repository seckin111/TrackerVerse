import 'package:bitirme_projesi/widgets/login_button_reusable_widget.dart';
import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.primaryBlue,
            AppColors.secondaryBlue,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                logoWidget("assets/logo/logo_beyaz.png"),
                reusableTextField("Enter Username", Icons.person_outline, true,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email id ", Icons.person_outline, true,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                logInSignUpButton(context, false, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
