import 'package:community_buddy/home.dart';
import 'package:community_buddy/otp.dart';
import 'package:community_buddy/personalInfo.dart';
import 'package:community_buddy/projectInfo.dart';
import 'package:community_buddy/setPassword.dart';
import 'package:community_buddy/signIn.dart';
import 'package:community_buddy/signUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signIn',
    routes: {
      'signIn': (context) => const MySignIn(),
      'signUp': (context) => const MySignUp(),
      'otp': (context) => const MyOtp(),
      'setPassword': (context) => const MySetPassword(),
      'personalInfo': (context) => const MyPersonalInfo(),
      'projectInfo': (context) => const MyProjectInfo(),
      'home': (context) => const MyHome(),
    },
  ));
}
