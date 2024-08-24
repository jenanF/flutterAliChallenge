import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts(
      {super.key,
      required this.username,
      required this.img,
      required this.caption,
      required this.avatar});

  final String username;
  final String avatar;
  final String caption;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10).copyWith(bottom: 0),
      child: Container(
        // alignment: Alignment.center,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(avatar),
                ),
                Text(username)
              ],
            ),
            Image.asset(
              img,
              height: 100,
              width: 100,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "${username}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("  ${caption}"),
                  ],
                )),
            Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.share_sharp,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
