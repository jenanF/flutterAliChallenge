import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/fav_page.dart';
import 'package:flutter_insta_challenge/home.dart';
import 'package:flutter_insta_challenge/posts.dart';
import 'package:provider/provider.dart';

class FavProvider extends ChangeNotifier {
  List<Posts> items = [];
  List<Posts> get items_ => items;

  void selecteFav(Posts itm) {
    final isExist = items.contains(itm);
    if (isExist) {
      items.remove(itm);
    } else {
      items.add(itm);
    }
    notifyListeners();
  }

  bool isExist(String itm) {
    final isExist = items.contains(itm);
    return isExist;
  }

  static FavProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavProvider>(
      context,
      listen: listen,
    );
  }

  bool likes = posts_[0].like;

  void addfav(Posts item) {
    if (likes == true) {
      favs.add(item);
    }
  }
}
