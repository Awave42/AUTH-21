import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ppi_ugpu_gp9_02_2021_record.g.dart';

abstract class PpiUgpuGp9022021Record
    implements Built<PpiUgpuGp9022021Record, PpiUgpuGp9022021RecordBuilder> {
  static Serializer<PpiUgpuGp9022021Record> get serializer =>
      _$ppiUgpuGp9022021RecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'name_pdf')
  String get namePdf;

  @nullable
  @BuiltValueField(wireName: 'url_pdf')
  String get urlPdf;

  @nullable
  @BuiltValueField(wireName: 'creat_add')
  DateTime get creatAdd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PpiUgpuGp9022021RecordBuilder builder) =>
      builder
        ..namePdf = ''
        ..urlPdf = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PPI-UGPU--GP9-02-2021');

  static Stream<PpiUgpuGp9022021Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PpiUgpuGp9022021Record._();
  factory PpiUgpuGp9022021Record(
          [void Function(PpiUgpuGp9022021RecordBuilder) updates]) =
      _$PpiUgpuGp9022021Record;

  static PpiUgpuGp9022021Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPpiUgpuGp9022021RecordData({
  String namePdf,
  String urlPdf,
  DateTime creatAdd,
}) =>
    serializers.toFirestore(
        PpiUgpuGp9022021Record.serializer,
        PpiUgpuGp9022021Record((p) => p
          ..namePdf = namePdf
          ..urlPdf = urlPdf
          ..creatAdd = creatAdd));
