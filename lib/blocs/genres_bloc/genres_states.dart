import 'package:flutter/foundation.dart';
import 'package:primer/models/genre.dart';

abstract class GenresState {}

class GenresUninitializedState implements GenresState {}

class GenresLoadingState implements GenresState {}

class GenresLoadedState implements GenresState {
  final List<Genre> genres;
  GenresLoadedState({@required this.genres});
}

class GenresEmptyState implements GenresState {}