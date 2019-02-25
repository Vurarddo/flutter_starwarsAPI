import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_response.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  static Serializer<Person> get serializer => _$personSerializer;

  String get name;

  @nullable
  String get heigth;

  @nullable
  String get mass;

  @nullable
  String get hairColor;
  //@BuiltValueField(asd: 'first_name')
  // String get firstName;

  // List films;
  // List species;
  // List vehicles;
  // List starships;
  String get created;
  String get edited;

  Person._();
  factory Person([updates(PersonBuilder b)]) = _$Person;
}
