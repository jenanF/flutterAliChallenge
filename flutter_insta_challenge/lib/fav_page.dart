import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/posts.dart';
import 'package:flutter_insta_challenge/home.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void showImage(index) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: Image.network(
                index,
                height: 190,
                width: 190,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Favorites",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: favs.length,
            itemBuilder: (context, index) {
              return favs.length <= 0
                  ? Container()
                  : InkWell(
                      onTap: () {
                        showImage(favs[index].img);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Expanded(
                          child: Container(
                            height: 50,
                            child: Row(
                              children: [
                                ClipOval(
                                  child: Image.network(
                                    favs[index].avatar,
                                    height: 39,
                                    width: 39,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  favs[index].username,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
            },
          ),
        ));
  }
}

List<Posts> favs = [];
