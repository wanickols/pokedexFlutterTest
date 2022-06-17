// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PokemonRecord> _$pokemonRecordSerializer =
    new _$PokemonRecordSerializer();

class _$PokemonRecordSerializer implements StructuredSerializer<PokemonRecord> {
  @override
  final Iterable<Type> types = const [PokemonRecord, _$PokemonRecord];
  @override
  final String wireName = 'PokemonRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PokemonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.evolutionTree;
    if (value != null) {
      result
        ..add('EvolutionTree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagepath;
    if (value != null) {
      result
        ..add('imagepath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moves;
    if (value != null) {
      result
        ..add('moves')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PokemonRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PokemonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'EvolutionTree':
          result.evolutionTree.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imagepath':
          result.imagepath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PokemonRecord extends PokemonRecord {
  @override
  final String name;
  @override
  final BuiltList<DocumentReference<Object>> evolutionTree;
  @override
  final int id;
  @override
  final String imagepath;
  @override
  final BuiltList<DocumentReference<Object>> moves;
  @override
  final String description;
  @override
  final double weight;
  @override
  final String category;
  @override
  final int height;
  @override
  final DocumentReference<Object> reference;

  factory _$PokemonRecord([void Function(PokemonRecordBuilder) updates]) =>
      (new PokemonRecordBuilder()..update(updates)).build();

  _$PokemonRecord._(
      {this.name,
      this.evolutionTree,
      this.id,
      this.imagepath,
      this.moves,
      this.description,
      this.weight,
      this.category,
      this.height,
      this.reference})
      : super._();

  @override
  PokemonRecord rebuild(void Function(PokemonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PokemonRecordBuilder toBuilder() => new PokemonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PokemonRecord &&
        name == other.name &&
        evolutionTree == other.evolutionTree &&
        id == other.id &&
        imagepath == other.imagepath &&
        moves == other.moves &&
        description == other.description &&
        weight == other.weight &&
        category == other.category &&
        height == other.height &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        evolutionTree.hashCode),
                                    id.hashCode),
                                imagepath.hashCode),
                            moves.hashCode),
                        description.hashCode),
                    weight.hashCode),
                category.hashCode),
            height.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PokemonRecord')
          ..add('name', name)
          ..add('evolutionTree', evolutionTree)
          ..add('id', id)
          ..add('imagepath', imagepath)
          ..add('moves', moves)
          ..add('description', description)
          ..add('weight', weight)
          ..add('category', category)
          ..add('height', height)
          ..add('reference', reference))
        .toString();
  }
}

class PokemonRecordBuilder
    implements Builder<PokemonRecord, PokemonRecordBuilder> {
  _$PokemonRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<DocumentReference<Object>> _evolutionTree;
  ListBuilder<DocumentReference<Object>> get evolutionTree =>
      _$this._evolutionTree ??= new ListBuilder<DocumentReference<Object>>();
  set evolutionTree(ListBuilder<DocumentReference<Object>> evolutionTree) =>
      _$this._evolutionTree = evolutionTree;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imagepath;
  String get imagepath => _$this._imagepath;
  set imagepath(String imagepath) => _$this._imagepath = imagepath;

  ListBuilder<DocumentReference<Object>> _moves;
  ListBuilder<DocumentReference<Object>> get moves =>
      _$this._moves ??= new ListBuilder<DocumentReference<Object>>();
  set moves(ListBuilder<DocumentReference<Object>> moves) =>
      _$this._moves = moves;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _weight;
  double get weight => _$this._weight;
  set weight(double weight) => _$this._weight = weight;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PokemonRecordBuilder() {
    PokemonRecord._initializeBuilder(this);
  }

  PokemonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _evolutionTree = $v.evolutionTree?.toBuilder();
      _id = $v.id;
      _imagepath = $v.imagepath;
      _moves = $v.moves?.toBuilder();
      _description = $v.description;
      _weight = $v.weight;
      _category = $v.category;
      _height = $v.height;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PokemonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PokemonRecord;
  }

  @override
  void update(void Function(PokemonRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PokemonRecord build() {
    _$PokemonRecord _$result;
    try {
      _$result = _$v ??
          new _$PokemonRecord._(
              name: name,
              evolutionTree: _evolutionTree?.build(),
              id: id,
              imagepath: imagepath,
              moves: _moves?.build(),
              description: description,
              weight: weight,
              category: category,
              height: height,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'evolutionTree';
        _evolutionTree?.build();

        _$failedField = 'moves';
        _moves?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PokemonRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
