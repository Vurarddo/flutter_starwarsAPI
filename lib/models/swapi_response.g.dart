// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swapi_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SwapiResponse> _$swapiResponseSerializer =
    new _$SwapiResponseSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
