import 'package:flutter/foundation.dart';

class Genre {
  String title;
  int booksCount;

  Genre({@required String title, int booksCount}) {
    this.title = title;
    this.booksCount = booksCount ?? 0;
  }
}