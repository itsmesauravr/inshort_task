// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_mark_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BooksMarkDtoAdapter extends TypeAdapter<BooksMarkDto> {
  @override
  final int typeId = 1;

  @override
  BooksMarkDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BooksMarkDto(
      author: fields[1] as String,
      content: fields[2] as String,
      date: fields[3] as String,
      id: fields[4] as String,
      imageUrl: fields[5] as String,
      readMoreUrl: fields[6] as String,
      time: fields[7] as String,
      title: fields[8] as String,
      url: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BooksMarkDto obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.imageUrl)
      ..writeByte(6)
      ..write(obj.readMoreUrl)
      ..writeByte(7)
      ..write(obj.time)
      ..writeByte(8)
      ..write(obj.title)
      ..writeByte(9)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BooksMarkDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
