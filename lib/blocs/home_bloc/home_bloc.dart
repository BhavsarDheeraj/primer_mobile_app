import 'package:primer/blocs/home_bloc/home_events.dart';
import 'package:primer/blocs/home_bloc/home_states.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  @override
  HomeState get initialState => HomePageState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeButtonTapped) {
      yield HomePageState();
    } else if (event is GenresButtonTapped) {
      yield GenresPageState();
    } else if (event is FavoritesButtonTapped) {
      yield FavoritesPageState();
    } else if (event is ReadButtonTapped) {
      yield ReadPageState();
    }
  }

}