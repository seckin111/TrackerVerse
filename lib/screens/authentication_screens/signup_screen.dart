import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../database/users.dart';
import '../../utils/colors_utils.dart';
import '../../widgets/login_button_reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  Future<void> register(BuildContext context) async {
    String email = _emailTextController.text;
    String password = _passwordTextController.text;
    String userName = _userNameTextController.text;

    if (email == '' || password == '' || userName == '') {
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
    User? existingUser = boxUser.values.firstWhereOrNull(
      (user) => user.email == email,
    );

    if (existingUser != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Email already exists.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      User newUser = User()
        ..id = boxUser.values.length + 1
        ..userName = userName
        ..email = email
        ..password = password;

      boxUser.add(newUser);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Success'),
          content: const Text('Registration successful.'),
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
                reusableTextField("Enter Email ", Icons.person_outline, true,
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
                  register(context);
                })

                // logInSignUpButton(context, false, () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const LogInScreen(),
                //     ),
                //   );
                // })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
