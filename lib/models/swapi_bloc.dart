import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:swapi/models/person_state.dart';
import 'package:swapi/models/person_response.dart';
import 'package:swapi/models/films_response.dart';
import 'package:swapi/models/swapi_response.dart';

class PersonBloc {
  final _personState = PersonListState();
  
  final _personListController = PublishSubject<void>();
  final _personSubject = BehaviorSubject<List<Person>>(seedValue: []);

  Stream<List<Person>> get personListStream => _personSubject.stream;

  Sink<void> get person => _personListController.sink;

  PersonBloc() {
    _personListController.stream.listen(handlePersonList);
  }

  void handlePersonList(_) async {
    await _personState.personListArticle();
    _personSubject.add(_personState.personList);
  }

  void close() {
    _personListController.close();
    _personSubject.close();
  }
}

// class FilmBloc {
//   final _filmState = FilmListState();
  
//   final _filmListController = PublishSubject<void>();
//   final _filmSubject = BehaviorSubject<List<Films>>(seedValue: []);

//   Stream<List<Films>> get filmListStream => _filmSubject.stream;

//   Sink<void> get film => _filmListController.sink;

//   FilmBloc() {
//     _filmListController.stream.listen(handleFilmList);
//   }

//   void handleFilmList(_) async {
//     await _filmState.filmListArticle();
//     _filmSubject.add(_filmState.filmList);
//   }

//   void close() {
//     _filmListController.close();
//     _filmSubject.close();
//   }
// }
