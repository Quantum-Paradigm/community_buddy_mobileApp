import 'package:flutter/material.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome back! Please enter your details.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
