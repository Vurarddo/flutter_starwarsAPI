// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swapi_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SwapiResponse> _$swapiResponseSerializer =
    new _$SwapiResponseSerializer();
Serializer<Person> _$personSerializer = new _$PersonSerializer();

class _$SwapiResponseSerializer implements StructuredSerializer<SwapiResponse> {
  @override
  final Iterable<Type> types = const [SwapiResponse, _$SwapiResponse];
  @override
  final String wireName = 'SwapiResponse';

  @override
  Iterable serialize(Serializers serializers, SwapiResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Person)])),
    ];

    return result;
  }

  @override
  SwapiResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SwapiResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Person)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'created',
      serializers.serialize(object.created,
          specifiedType: const FullType(String)),
      'edited',
      serializers.serialize(object.edited,
          specifiedType: const FullType(String)),
    ];
    if (object.heigth != null) {
      result
        ..add('heigth')
        ..add(serializers.serialize(object.heigth,
            specifiedType: const FullType(String)));
    }
    if (object.mass != null) {
      result
        ..add('mass')
        ..add(serializers.serialize(object.mass,
            specifiedType: const FullType(String)));
    }
    if (object.hairColor != null) {
      result
        ..add('hairColor')
        ..add(serializers.serialize(object.hairColor,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heigth':
          result.heigth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mass':
          result.mass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hairColor':
          result.hairColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edited':
          result.edited = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SwapiResponse extends SwapiResponse {
  @override
  final BuiltList<Person> results;

  factory _$SwapiResponse([void updates(SwapiResponseBuilder b)]) =>
      (new SwapiResponseBuilder()..update(updates)).build();

  _$SwapiResponse._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('SwapiResponse', 'results');
    }
  }

  @override
  SwapiResponse rebuild(void updates(SwapiResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SwapiResponseBuilder toBuilder() => new SwapiResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwapiResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SwapiResponse')
          ..add('results', results))
        .toString();
  }
}

class SwapiResponseBuilder
    implements Builder<SwapiResponse, SwapiResponseBuilder> {
  _$SwapiResponse _$v;

  ListBuilder<Person> _results;
  ListBuilder<Person> get results =>
      _$this._results ??= new ListBuilder<Person>();
  set results(ListBuilder<Person> results) => _$this._results = results;

  SwapiResponseBuilder();

  SwapiResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwapiResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SwapiResponse;
  }

  @override
  void update(void updates(SwapiResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SwapiResponse build() {
    _$SwapiResponse _$result;
    try {
      _$result = _$v ?? new _$SwapiResponse._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SwapiResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Person extends Person {
  @override
  final String name;
  @override
  final String heigth;
  @override
  final String mass;
  @override
  final String hairColor;
  @override
  final String created;
  @override
  final String edited;

  factory _$Person([void updates(PersonBuilder b)]) =>
      (new PersonBuilder()..update(updates)).build();

  _$Person._(
      {this.name,
      this.heigth,
      this.mass,
      this.hairColor,
      this.created,
      this.edited})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Person', 'name');
    }
    if (created == null) {
      throw new BuiltValueNullFieldError('Person', 'created');
    }
    if (edited == null) {
      throw new BuiltValueNullFieldError('Person', 'edited');
    }
  }

  @override
  Person rebuild(void updates(PersonBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        name == other.name &&
        heigth == other.heigth &&
        mass == other.mass &&
        hairColor == other.hairColor &&
        created == other.created &&
        edited == other.edited;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), heigth.hashCode), mass.hashCode),
                hairColor.hashCode),
            created.hashCode),
        edited.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Person')
          ..add('name', name)
          ..add('heigth', heigth)
          ..add('mass', mass)
          ..add('hairColor', hairColor)
          ..add('created', created)
          ..add('edited', edited))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _heigth;
  String get heigth => _$this._heigth;
  set heigth(String heigth) => _$this._heigth = heigth;

  String _mass;
  String get mass => _$this._mass;
  set mass(String mass) => _$this._mass = mass;

  String _hairColor;
  String get hairColor => _$this._hairColor;
  set hairColor(String hairColor) => _$this._hairColor = hairColor;

  String _created;
  String get created => _$this._created;
  set created(String created) => _$this._created = created;

  String _edited;
  String get edited => _$this._edited;
  set edited(String edited) => _$this._edited = edited;

  PersonBuilder();

  PersonBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _heigth = _$v.heigth;
      _mass = _$v.mass;
      _hairColor = _$v.hairColor;
      _created = _$v.created;
      _edited = _$v.edited;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Person;
  }

  @override
  void update(void updates(PersonBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Person build() {
    final _$result = _$v ??
        new _$Person._(
            name: name,
            heigth: heigth,
            mass: mass,
            hairColor: hairColor,
            created: created,
            edited: edited);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
