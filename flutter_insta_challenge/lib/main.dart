import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_insta_challenge/home.dart';
import 'package:flutter_insta_challenge/navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarScreen(),
    );
  }
}
