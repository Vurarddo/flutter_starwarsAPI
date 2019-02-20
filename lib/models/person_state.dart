import 'package:swapi/models/swapi_response.dart';
import 'package:swapi/api/article.dart';

class PersonListState {
  List<Person> personList = [];

  Future<void> personListArticle() async {
    SwapiResponse responsePersons = await ArticleApi.getArticle();
    personList = responsePersons.results.toList();
  }
}
