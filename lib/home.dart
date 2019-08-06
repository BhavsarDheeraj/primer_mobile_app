import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primer/blocs/home_bloc/home_bloc.dart';
import 'package:primer/blocs/home_bloc/home_events.dart';
import 'package:primer/blocs/home_bloc/home_states.dart';
import 'package:primer/pages/favorites_page.dart';
import 'package:primer/pages/genres_page.dart';
import 'package:primer/pages/home_page.dart';
import 'package:primer/pages/read_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeBloc _homeBloc;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer'),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: BlocBuilder(
        bloc: _homeBloc,
        builder: (context, state) {
          if (state is HomePageState) {
            return HomePage();
          } else if (state is GenresPageState) {
            return GenresPage();
          } else if (state is ReadPageState) {
            return ReadPage();
          } else {
            return FavoritesPage();
          }
        },
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: didSelectBottomNavigationPage,
      currentIndex: _currentIndex,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          title: Text('Genres'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_library),
          title: Text('Read'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorites'),
        ),
      ],
    );
  }

  void didSelectBottomNavigationPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (index) {
      case 0:
        _homeBloc.dispatch(HomeButtonTapped());
        break;
      case 1:
        _homeBloc.dispatch(GenresButtonTapped());
        break;
      case 2:
        _homeBloc.dispatch(ReadButtonTapped());
        break;
      case 3:
        _homeBloc.dispatch(FavoritesButtonTapped());
        break;
      default:
    }
  }
}
