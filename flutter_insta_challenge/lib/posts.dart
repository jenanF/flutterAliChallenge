import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts(
      {super.key,
      required this.username,
      required this.img,
      required this.caption,
      required this.avatar,
      required this.like,
      required this.liked});

  final String username;
  final String avatar;
  final String caption;
  final String img;
  final bool like;
  final VoidCallback liked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12).copyWith(
        top: 20,
        bottom: 0,
      ),
      child: Container(
        // alignment: Alignment.center,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    avatar,
                    height: 39,
                    width: 39,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Image.network(
              img,
              height: 330,
              width: 330,
            ),
            // SizedBox(
            //   height: 6,
            // ),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: liked,
                  child: like
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.share_sharp,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
