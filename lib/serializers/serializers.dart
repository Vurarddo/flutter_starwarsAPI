import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:swapi/models/person_response.dart';
import 'package:swapi/models/films_response.dart';

import 'package:swapi/models/swapi_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  // Films,
  Person,
  SwapiResponse,
])
final Serializers serializers = _$serializers;

final standardSerializers =
      (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
