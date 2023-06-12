import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../database/users.dart';
import '../../entry_point.dart';
import '../../utils/colors_utils.dart';
import '../../widgets/login_button_reusable_widget.dart';
import 'signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  Future<void> login(BuildContext context) async {
    String email = _emailTextController.text;
    String password = _passwordTextController.text;

    if (email == '' || password == '' || email == ' ' || password == ' ') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please fill all the fields.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    var boxUser = await Hive.openBox<User>('userBox');
    User? user = boxUser.values.firstWhereOrNull(
      (user) => user.email == email && user.password == password,
    );

    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EntryPoint(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Invalid email or password.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: const MaterialButton(
            enableFeedback: true,
            onPressed: null,
            mouseCursor: SystemMouseCursors.click,
            child: Text(
              "Sign Up",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                logoWidget("assets/logo/logo_beyaz.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter E-Mail", Icons.person_outline, true,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                logInSignUpButton(context, true, () {
                  login(context);
                }),
                // logInSignUpButton(context, true, () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const EntryPoint(),
                //     ),
                //   );
                // }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
