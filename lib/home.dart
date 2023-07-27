import 'package:d_chart/d_chart.dart';
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
            children: [
              AspectRatio(
                aspectRatio: 14 / 9,
                child: Stack(
                  children: [
                    DChartPie(
                      data: const [
                        {'domain': 'Collected', 'measure': 35},
                        {'domain': 'Current Due', 'measure': 50},
                        {'domain': 'Over Due', 'measure': 15},
                      ],
                      fillColor: (pieData, index) {
                        switch (pieData['domain']) {
                          case 'Collected':
                            return Colors.green;
                          case 'Current Due':
                            return Colors.purple;
                          case 'Over Due':
                            return Colors.red;
                        }
                      },
                      labelFontSize: 14,
                      labelPosition: PieLabelPosition.outside,
                      labelLineColor: Colors.grey,
                      donutWidth: 20,
                      showLabelLine: true,
                      labelColor: Colors.black,
                      pieLabel: (pieData, index) => pieData['domain'],
                      // pieLabel: (Map<dynamic, dynamic> pieData, int? index) {
                      //   return pieData['domain'];
                      // }
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                        child: Column(
                          children: [
                            Center(child: Text('25,000 PKR')),
                            Center(child: Text('of 100,000 PKR')),
                            Center(child: Text('collected this month')),
                          ],
                        ),
                      ),
                    )

                    //  collected this month
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
