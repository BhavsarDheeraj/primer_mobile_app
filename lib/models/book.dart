import 'package:flutter/foundation.dart';
import 'package:primer/models/genre.dart';

class Book {
  String title;
  String authorName;
  String isbn;
  bool isFavorite;
  bool isRead;
  Genre genre;

  Book({@required String title, @required String authorName, @required String isbn, bool isFavorite, bool isRead, @required Genre genre}) {
    this.title = title;
    this.authorName = authorName;
    this.isbn = isbn;
    this.isFavorite = isFavorite ?? false;
    this.isRead = isRead ?? false;
    this.genre = genre;
  }
}