import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                    child: Image.network(
                  "https://yt3.googleusercontent.com/nfQZ2DpWcffZJRQNqxG8qMdMNPso6_SzV-HuKrcp1InvIh3vPT8A0h-BDT4WOODiTDjqKPqQ=s900-c-k-c0x00ffffff-no-rj",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                )),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Kuwait Codes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Icon(Icons.person)
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
