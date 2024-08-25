import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/posts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
          child: ListView.builder(
              itemCount: posts_.length,
              itemBuilder: (context, index) {
                return Posts(
                  username: posts_[index].username,
                  img: posts_[index].img,
                  caption: posts_[index].caption,
                  avatar: posts_[index].avatar,
                  like: posts_[index].like,
                  liked: () {},
                );
              }),
        ),
      ),
    );
  }

  List posts_ = [
    Posts(
      username: "jenan almulla",
      img:
          "https://media.licdn.com/dms/image/D4D22AQELILVqF2nOMw/feedshare-shrink_800/0/1695319707254?e=2147483647&v=beta&t=SmtJuMSD9eBRvQhixfGgvEoxegGr78k1yqY1TvZ12lk", //"images\cyberteam.jpg",
      caption: "2024 Cyber team",
      avatar:
          "https://yt3.googleusercontent.com/nfQZ2DpWcffZJRQNqxG8qMdMNPso6_SzV-HuKrcp1InvIh3vPT8A0h-BDT4WOODiTDjqKPqQ=s900-c-k-c0x00ffffff-no-rj", //"flutter_insta_challenge\images\IMG_8257.jpg"
      like: false,
      liked: () {},
    ),
    Posts(
      username: "Rahaf Alenezi",
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTycCCO4w2zR_lKAV2XFzJx0WRRrqR0dUNCrLTNqDdhIoVQNGrfVl-rYdwGXsB7ec9aBNc&usqp=CAU", //"flutter_insta_challenge\images\IMG_7240.jpg",
      caption: "2024 AI team",
      avatar:
          "https://yt3.googleusercontent.com/nfQZ2DpWcffZJRQNqxG8qMdMNPso6_SzV-HuKrcp1InvIh3vPT8A0h-BDT4WOODiTDjqKPqQ=s900-c-k-c0x00ffffff-no-rj",
      like: false,
      liked: () {},
    ),
  ];
}
