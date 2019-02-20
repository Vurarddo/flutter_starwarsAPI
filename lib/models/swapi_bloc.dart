import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:swapi/models/person_state.dart';
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
