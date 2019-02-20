import 'dart:collection';

import 'package:swapi/models/swapi_response.dart';
import 'package:meta/meta.dart';

@immutable
class PersonListState {
  List<Person> _personList = [];

}
