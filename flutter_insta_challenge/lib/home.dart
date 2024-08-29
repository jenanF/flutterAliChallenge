// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/fav_provider.dart';
import 'package:flutter_insta_challenge/posts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_insta_challenge/fav_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_index = 0;

  // void addfavorite() {}
  // Future saveForm(index) async {
  //   final isLiked = posts_[index].like;

  //   if (isLiked) {
  //     final item = Posts(
  //       username: posts_[index].username,
  //       img: posts_[index].img,
  //       caption: posts_[index].caption,
  //       avatar: posts_[index].avatar,
  //       like: posts_[index].like,
  //       liked: () {},
  //     );
  //     final provider = Provider.of<FavProvider>(context, listen: false);
  //     provider.addfav(item);
  //   }
  // }

  void liking(post, index) {
    bool isLiked = posts_[index].like;
    setState(() {
      isLiked ? isLiked = false : isLiked = true;

      if (isLiked) {
        favs.add(post);
      } else if (isLiked == false) {
        favs.remove(post);
      } else {
        return;
      }
    });
  }

  // void test(int index) {
  //   setState(() {
  //     posts_[index].like = !posts_[index].like;
  //   });
  // }

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
                  liked: () {
                    liking(posts_[index], index);
                    //test(index);
                    print(posts_[index].like);
                    //saveForm(index);
                    print(favs);
                  },
                );
              }),
        ),
      ),
    );
  }
}

List posts_ = [
  Posts(
    username: "jenan almulla",
    img:
        "https://media.licdn.com/dms/image/D4D22AQELILVqF2nOMw/feedshare-shrink_800/0/1695319707254?e=2147483647&v=beta&t=SmtJuMSD9eBRvQhixfGgvEoxegGr78k1yqY1TvZ12lk", //"images\cyberteam.jpg",
    caption: "2023 graduation day",
    avatar:
        "https://yt3.googleusercontent.com/nfQZ2DpWcffZJRQNqxG8qMdMNPso6_SzV-HuKrcp1InvIh3vPT8A0h-BDT4WOODiTDjqKPqQ=s900-c-k-c0x00ffffff-no-rj", //"flutter_insta_challenge\images\IMG_8257.jpg"
    like: false,
    liked: () {},
  ),
  Posts(
    username: "rahaf alenezi",
    img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTycCCO4w2zR_lKAV2XFzJx0WRRrqR0dUNCrLTNqDdhIoVQNGrfVl-rYdwGXsB7ec9aBNc&usqp=CAU", //"flutter_insta_challenge\images\IMG_7240.jpg",
    caption: "kc logo",
    avatar:
        "https://yt3.googleusercontent.com/nfQZ2DpWcffZJRQNqxG8qMdMNPso6_SzV-HuKrcp1InvIh3vPT8A0h-BDT4WOODiTDjqKPqQ=s900-c-k-c0x00ffffff-no-rj",
    like: false,
    liked: () {},
  ),
];
