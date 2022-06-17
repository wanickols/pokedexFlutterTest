// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moves_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovesRecord> _$movesRecordSerializer = new _$MovesRecordSerializer();

class _$MovesRecordSerializer implements StructuredSerializer<MovesRecord> {
  @override
  final Iterable<Type> types = const [MovesRecord, _$MovesRecord];
  @override
  final String wireName = 'MovesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MovesRecord object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.damage;
    if (value != null) {
      result
        ..add('damage')
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
  MovesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovesRecordBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'damage':
          result.damage = serializers.deserialize(value,
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

class _$MovesRecord extends MovesRecord {
  @override
  final String name;
  @override
  final String type;
  @override
  final int damage;
  @override
  final DocumentReference<Object> reference;

  factory _$MovesRecord([void Function(MovesRecordBuilder) updates]) =>
      (new MovesRecordBuilder()..update(updates)).build();

  _$MovesRecord._({this.name, this.type, this.damage, this.reference})
      : super._();

  @override
  MovesRecord rebuild(void Function(MovesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovesRecordBuilder toBuilder() => new MovesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovesRecord &&
        name == other.name &&
        type == other.type &&
        damage == other.damage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), type.hashCode), damage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovesRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('damage', damage)
          ..add('reference', reference))
        .toString();
  }
}

class MovesRecordBuilder implements Builder<MovesRecord, MovesRecordBuilder> {
  _$MovesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _damage;
  int get damage => _$this._damage;
  set damage(int damage) => _$this._damage = damage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MovesRecordBuilder() {
    MovesRecord._initializeBuilder(this);
  }

  MovesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _damage = $v.damage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovesRecord;
  }

  @override
  void update(void Function(MovesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovesRecord build() {
    final _$result = _$v ??
        new _$MovesRecord._(
            name: name, type: type, damage: damage, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
