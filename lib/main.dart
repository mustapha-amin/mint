import 'package:flutter/material.dart';
import 'nav_bar/nav_bar.dart';

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