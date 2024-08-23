import 'package:flutter/material.dart';

class _NavBarScreen extends StatefulWidget {
  const _NavBarScreen({super.key});

  @override
  State<_NavBarScreen> createState() => __NavBarScreenState();
}

class __NavBarScreenState extends State<_NavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
