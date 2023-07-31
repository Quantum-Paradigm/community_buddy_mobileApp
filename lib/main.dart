import 'package:community_buddy/home.dart';
import 'package:community_buddy/Onboarding/otp.dart';
import 'package:community_buddy/Onboarding/personalInfo.dart';
import 'package:community_buddy/Onboarding/projectInfo.dart';
import 'package:community_buddy/Onboarding/setPassword.dart';
import 'package:community_buddy/Onboarding/signIn.dart';
import 'package:community_buddy/Onboarding/signUp.dart';
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
