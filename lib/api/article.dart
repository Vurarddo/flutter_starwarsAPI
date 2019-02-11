import 'package:dio/dio.dart';
// import 'package:swapi/models/article.dart';
import 'package:swapi/models/swapi_response.dart';
import 'package:swapi/serializers/serializers.dart';

Dio artilceClient = Dio(
  Options(
    baseUrl: 'https://swapi.co/api'
  )
);

class ArticleApi {
  // Passed SwapiResponse as response type
  static Future<SwapiResponse> getArticle() async {
    Response<Map<String, dynamic>> response = await artilceClient.get('/people');
    return standardSerializers.deserializeWith<SwapiResponse>(SwapiResponse.serializer, response.data);
  }
}

// class Person {
//     String name;
//     String heigth;
//     String mass;
//     String hairColor;
//     List films;
//     List species;
//     List vehicles;
//     List starships;
//     String created;
//     String edited;
//     // Created fromJson method to serialise data from API
//     Person.fromJson(Map json) {
//       name = json['name'];
//       heigth = json['heigth'];
//       mass = json['mass'];
//       hairColor = json['hairColor'];
//       films = json['films'];
//       species = json['species'];
//       vehicles = json['vehicles'];
//       starships = json['starships'];
//       created = json['created'];
//       edited = json['edited'];
//     }
// }

// class SwapiResponse<T> {
//   List<Person> results;
//   // Created fromJson method to serialize data from API
//   SwapiResponse.fromJson(Map json) {
//     print(json['results'].map((p) => Person.fromJson(p)));
//     results = json['results'].map<Person>((p) => Person.fromJson(p)).toList();
//   }
// }
