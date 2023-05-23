import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

  void getNextWord() {
    current = WordPair.random();
    notifyListeners();
  }
}