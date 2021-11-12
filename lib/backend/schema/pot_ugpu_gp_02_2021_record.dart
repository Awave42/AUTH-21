import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pot_ugpu_gp_02_2021_record.g.dart';

abstract class PotUgpuGp022021Record
    implements Built<PotUgpuGp022021Record, PotUgpuGp022021RecordBuilder> {
  static Serializer<PotUgpuGp022021Record> get serializer =>
      _$potUgpuGp022021RecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'name_pdf')
  String get namePdf;

  @nullable
  @BuiltValueField(wireName: 'creat_add')
  DateTime get creatAdd;

  @nullable
  @BuiltValueField(wireName: 'url_pdf')
  BuiltList<String> get urlPdf;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PotUgpuGp022021RecordBuilder builder) =>
      builder
        ..namePdf = ''
        ..urlPdf = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('POT-UGPU-GP-02-2021');

  static Stream<PotUgpuGp022021Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PotUgpuGp022021Record._();
  factory PotUgpuGp022021Record(
          [void Function(PotUgpuGp022021RecordBuilder) updates]) =
      _$PotUgpuGp022021Record;

  static PotUgpuGp022021Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPotUgpuGp022021RecordData({
  String namePdf,
  DateTime creatAdd,
}) =>
    serializers.toFirestore(
        PotUgpuGp022021Record.serializer,
        PotUgpuGp022021Record((p) => p
          ..namePdf = namePdf
          ..creatAdd = creatAdd
          ..urlPdf = null));
