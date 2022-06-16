import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pokemon_record.g.dart';

abstract class PokemonRecord
    implements Built<PokemonRecord, PokemonRecordBuilder> {
  static Serializer<PokemonRecord> get serializer => _$pokemonRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'EvolutionTree')
  BuiltList<DocumentReference> get evolutionTree;

  @nullable
  int get id;

  @nullable
  String get imagepath;

  @nullable
  BuiltList<DocumentReference> get moves;

  @nullable
  String get description;

  @nullable
  double get weight;

  @nullable
  String get category;

  @nullable
  int get height;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PokemonRecordBuilder builder) => builder
    ..name = ''
    ..evolutionTree = ListBuilder()
    ..id = 0
    ..imagepath = ''
    ..moves = ListBuilder()
    ..description = ''
    ..weight = 0.0
    ..category = ''
    ..height = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pokemon');

  static Stream<PokemonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PokemonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static PokemonRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PokemonRecord(
        (c) => c
          ..name = snapshot.data['name']
          ..evolutionTree = safeGet(() =>
              ListBuilder(snapshot.data['EvolutionTree'].map((s) => toRef(s))))
          ..id = snapshot.data['id']?.round()
          ..imagepath = snapshot.data['imagepath']
          ..moves = safeGet(
              () => ListBuilder(snapshot.data['moves'].map((s) => toRef(s))))
          ..description = snapshot.data['description']
          ..weight = snapshot.data['weight']?.toDouble()
          ..category = snapshot.data['category']
          ..height = snapshot.data['height']?.round()
          ..reference = PokemonRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PokemonRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Pokemon',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  PokemonRecord._();
  factory PokemonRecord([void Function(PokemonRecordBuilder) updates]) =
      _$PokemonRecord;

  static PokemonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPokemonRecordData({
  String name,
  int id,
  String imagepath,
  String description,
  double weight,
  String category,
  int height,
}) =>
    serializers.toFirestore(
        PokemonRecord.serializer,
        PokemonRecord((p) => p
          ..name = name
          ..evolutionTree = null
          ..id = id
          ..imagepath = imagepath
          ..moves = null
          ..description = description
          ..weight = weight
          ..category = category
          ..height = height));
