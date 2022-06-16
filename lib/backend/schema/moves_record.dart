import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'moves_record.g.dart';

abstract class MovesRecord implements Built<MovesRecord, MovesRecordBuilder> {
  static Serializer<MovesRecord> get serializer => _$movesRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get type;

  @nullable
  int get damage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MovesRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..damage = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Moves');

  static Stream<MovesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MovesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MovesRecord._();
  factory MovesRecord([void Function(MovesRecordBuilder) updates]) =
      _$MovesRecord;

  static MovesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMovesRecordData({
  String name,
  String type,
  int damage,
}) =>
    serializers.toFirestore(
        MovesRecord.serializer,
        MovesRecord((m) => m
          ..name = name
          ..type = type
          ..damage = damage));
