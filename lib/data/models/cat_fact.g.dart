// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatFactAdapter extends TypeAdapter<CatFact> {
  @override
  final int typeId = 1;

  @override
  CatFact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatFact(
      id: fields[0] as String?,
      text: fields[1] as String?,
      createdAt: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CatFact obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatFactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFact _$$_CatFactFromJson(Map<String, dynamic> json) => _$_CatFact(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_CatFactToJson(_$_CatFact instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt,
    };
