import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/fav_provider.dart';
// ignore: unused_import
import 'package:flutter_insta_challenge/home.dart';
import 'package:flutter_insta_challenge/navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeNotifierProvider(
      create: (_) => FavProvider(),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarScreen(),
    );
  }
}
