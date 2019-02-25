import 'package:swapi/models/swapi_response.dart';
import 'package:swapi/models/person_response.dart';
import 'package:swapi/models/films_response.dart';
import 'package:swapi/api/article.dart';

class PersonListState {
  List<Person> personList = [];

  Future<void> personListArticle() async {
    SwapiResponse responsePersons = await ArticleApi.getArticle();
    personList = responsePersons.results.toList();
  }
}

// class FilmListState {
//   List<Films> filmList = [];

//   Future<void> filmListArticle() async {
//     SwapiResponse responseFilms = await ArticleApi.getFilms();
//     filmList = responseFilms.filmResults.toList();
//   }
// }
