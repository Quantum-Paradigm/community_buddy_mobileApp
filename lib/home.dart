import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(icon: Icons.people, text: 'Residents'),
          GButton(
            icon: Icons.construction,
            text: 'Maintainence',
          ),
          GButton(
            icon: Icons.notifications,
            text: 'Broadcast',
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('data')],
          ),
        ),
      ),
    );
  }
}
