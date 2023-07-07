import 'package:flutter/material.dart';
import 'package:mint/nav_bar.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    )
  );
}