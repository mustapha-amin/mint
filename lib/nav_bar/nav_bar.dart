import 'package:flutter/material.dart';

import 'screens/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 28, 58, 107),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_rounded),
            label: "Finance",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: "Subscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: "More",
          ),
        ],
      ),
    );
  }
}
