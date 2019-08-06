import 'package:primer/models/genre.dart';

class Repository {
  static Repository shared = Repository();

  //Properties
  List<Genre> _genres = [
    Genre(title: 'Romance'),
    Genre(title: 'Thriller', booksCount: 10),
    Genre(title: 'Sci-Fi'),
  ];

  //Methods
  List<Genre> getAllGenres() {
    return this._genres;
  }
}
