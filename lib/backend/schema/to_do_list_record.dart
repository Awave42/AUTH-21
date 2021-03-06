import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'to_do_list_record.g.dart';

abstract class ToDoListRecord
    implements Built<ToDoListRecord, ToDoListRecordBuilder> {
  static Serializer<ToDoListRecord> get serializer =>
      _$toDoListRecordSerializer;

  @nullable
  DateTime get toDoDate;

  @nullable
  String get toDoName;

  @nullable
  String get toDoDescription;

  @nullable
  bool get toDoState;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ToDoListRecordBuilder builder) => builder
    ..toDoName = ''
    ..toDoDescription = ''
    ..toDoState = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ToDoList');

  static Stream<ToDoListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ToDoListRecord._();
  factory ToDoListRecord([void Function(ToDoListRecordBuilder) updates]) =
      _$ToDoListRecord;

  static ToDoListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createToDoListRecordData({
  DateTime toDoDate,
  String toDoName,
  String toDoDescription,
  bool toDoState,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        ToDoListRecord.serializer,
        ToDoListRecord((t) => t
          ..toDoDate = toDoDate
          ..toDoName = toDoName
          ..toDoDescription = toDoDescription
          ..toDoState = toDoState
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
