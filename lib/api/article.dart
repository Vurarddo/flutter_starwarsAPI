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
  // static Future<SwapiResponse> getFilms() async {
  //   Response<Map<String, dynamic>> response = await artilceClient.get('/films');
  //   return standardSerializers.deserializeWith<SwapiResponse>(SwapiResponse.serializer, response.data);
  // }
}
