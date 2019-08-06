import 'package:primer/blocs/genres_bloc/genres_events.dart';
import 'package:primer/blocs/genres_bloc/genres_states.dart';
import 'package:bloc/bloc.dart';
import 'package:primer/models/genre.dart';
import 'package:primer/services/repository.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  @override
  GenresState get initialState => GenresUninitializedState();

  @override
  Stream<GenresState> mapEventToState(GenresEvent event) async* {
    if (event is GetAllGenres) {
      yield GenresLoadingState();
      List<Genre> genres = Repository.shared.getAllGenres();
      if (genres.isEmpty) {
        yield GenresEmptyState();
      } else {
        yield GenresLoadedState(genres: genres);
      }
    }
  }

}