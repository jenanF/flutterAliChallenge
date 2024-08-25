import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavProvider extends ChangeNotifier {
  List<String> _words = [];
  List<String> get words => _words;

  void selecteFav(String word) {
    final isExist = _words.contains(word);
    if (isExist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExist = _words.contains(word);
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
}
