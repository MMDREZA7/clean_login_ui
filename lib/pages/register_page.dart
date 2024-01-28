import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_login_ui/components/my_button.dart';
import 'package:clean_login_ui/components/my_textfield.dart';
import 'package:clean_login_ui/components/sigin_in_others.dart';
import 'package:clean_login_ui/pages/login_page.dart';

import 'home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // controllers
    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

    // focus nodes
    final _userNameFucosNode = FocusNode();
    final _passwordFucosNode = FocusNode();
    final _confirmPasswordFucosNode = FocusNode();

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // message
                  Text(
                    'W e l c o m e',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[900],
                    ),
                  ),

                  // logo
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'images/icon.png',
                      height: 150,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "is a member?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),

                      // Navigate to register page
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "SING IN",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[700],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // userName TextField
                  MyTextField(
                    focusNode: _userNameFucosNode,
                    nextFocusNode: _passwordFucosNode,
                    icon: CupertinoIcons.person_alt,
                    title: 'USER NAME',
                    controller: _userNameController,
                  ),

                  const SizedBox(height: 5),

                  // Password TextField
                  MyTextField(
                    focusNode: _passwordFucosNode,
                    nextFocusNode: _confirmPasswordFucosNode,
                    icon: CupertinoIcons.lock_fill,
                    title: 'PASSWORD',
                    controller: _passwordController,
                  ),

                  const SizedBox(height: 10),

                  // confirm password TextField
                  MyTextField(
                    focusNode: _confirmPasswordFucosNode,
                    nextFocusNode: null,
                    icon: CupertinoIcons.person_alt,
                    title: 'CONFIRM PASSWORD',
                    controller: _confirmPasswordController,
                  ),

                  // sign in button
                  MyButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    title: 'SIGN UP',
                  ),

                  const SizedBox(height: 5),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          height: 5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // sing in by face book + sing in by google play + sing in by apple
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // sing in by face book
                      ContinueWith(imagePath: 'images/facebook.png'),

                      SizedBox(width: 10),

                      // sing in by google play
                      ContinueWith(imagePath: 'images/google-play.png'),

                      SizedBox(width: 10),

                      // sing in by apple
                      ContinueWith(imagePath: 'images/apple.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
