import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primer/blocs/genres_bloc/genres_bloc.dart';
import 'package:primer/blocs/genres_bloc/genres_events.dart';
import 'package:primer/blocs/genres_bloc/genres_states.dart';
import 'package:primer/models/genre.dart';
import 'package:primer/widgets/loading_screen.dart';
import 'package:primer/widgets/message_screen.dart';

class GenresPage extends StatefulWidget {
  @override
  _GenresPageState createState() => _GenresPageState();
}

class _GenresPageState extends State<GenresPage> {
  GenresBloc _genresBloc;

  @override
  void initState() {
    super.initState();
    _genresBloc = GenresBloc();
    _genresBloc.dispatch(GetAllGenres());
  }

  @override
  void dispose() {
    _genresBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _genresBloc,
      builder: (context, state) {
        if (state is GenresUninitializedState || state is GenresLoadingState) {
          return LoadingScreen(
            message: 'Loading Genres',
          );
        } else if (state is GenresEmptyState) {
          return MessageScreen(
            message: 'No genres found',
          );
        } else {
          List<Genre> _genres = (state as GenresLoadedState).genres;
          return buildGenresList(_genres);
        }
      },
    );
  }

  Widget buildGenresList(List<Genre> genres) {
    return ListView.builder(
      itemCount: genres.length,
      itemBuilder: (context, index) {
        Genre genre = genres[index];
        return buildGenresListTile(genre);
      },
    );
  }

  Widget buildGenresListTile(Genre genre) {
    return ListTile(
      title: Text(genre.title),
      subtitle: Text('${genre.booksCount} Books'),
      leading: Icon(
        Icons.local_library,
        color: Colors.indigo,
      ),
    );
  }
}
